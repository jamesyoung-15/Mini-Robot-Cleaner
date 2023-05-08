#include <stddef.h>
#include <stdio.h>
#include <string.h>
#include <unistd.h>
#include <errno.h>

//network headers
#include <sys/socket.h>
#include <arpa/inet.h>

#define PORT 4545
#define BUFFERSIZE 8096
#define PATHSIZE 128

struct{
    char *extension;
    char *filetype;
} contentType[]={
    {"gif", "image/gif" },
    {"jpg", "image/jpg" },
    {"jpeg","image/jpeg"},
    {"png", "image/png" },
    {"ico", "image/ico" },
    {"zip", "image/zip" },
    {"gz",  "image/gz"  },
    {"tar", "image/tar" },
    {"htm", "text/html" },
    {"html","text/html" },
    {0,0} };

int main()
{
    /*variables*/
    struct sockaddr_in server_address, client_address; //client and server address structs
    int serverFd, clientFd, fileFd; //file descriptors
    int serv_address_length = sizeof(server_address); //get size of server address struct
    int client_address_length = sizeof(client_address); //get size of client address struct
    
    
    char buf[BUFFERSIZE] = {0}; //buffer for http request
    char *testResponsee = "HTTP/1.1 200 OK\nContent-Type: text/plain\nContent-Length: 12\n\nHello world!";
    char httpResponse[BUFFERSIZE]={0};

    /*socket creation*/
    serverFd = socket(AF_INET, //domain type
     SOCK_STREAM, //Use TCP (UDP is SOCK_DGRAM)
      0 //protocol most of the time set to 0
      );

    //check for socket creation error
    if(serverFd<0)
    {
        perror("socket creation failure\n");
        return 1;
    }
    printf("Socket created\n");

    /*binding socket*/
    memset(&server_address, 0, serv_address_length); //set memory address of server address to 0
    server_address.sin_family = AF_INET; //set to AF_INET for TCP and UDP
    server_address.sin_addr.s_addr = htonl(INADDR_ANY); //accept any ip address, htonl to convert host byte order to network byte order
    server_address.sin_port = htons(PORT); //listen on defined port, htons to convert host byte order to network byte order

    //check for error when binding socket
    if(bind(serverFd, (struct sockaddr *) &server_address, client_address_length)<0)
    {
        perror("Couldn't bind socket");
        close(serverFd);
        return 1;
    }
    printf("Socket binded\n");

    /*listen for connections*/
    if(listen(serverFd, SOMAXCONN)<0) //somaxconn is max number you can pass to listen
    {
        perror("Error listening\n");
        close(serverFd);
        return 1;
    }
    printf("Socket is listening for incoming connection\n");

    /*accept connection, read request, write response*/
    for(;;)
    {
        //variables
        int targetLength = 0;
        char targetPath[PATHSIZE]={0};
        char fileExtension[PATHSIZE]={0};
        char *httpContent;
        int fileNameLength=0;
        int extensionLength=0;


        //accept incoming connection, see man accept for more details
        int clientFd = accept(serverFd, (struct sockaddr *)&client_address, (socklen_t *) &client_address);
        //check whether client's connection attempt was accepted
        if(clientFd<0)
        {
            perror("Connection declined/error\n");
            return 1;
        }
        printf("\nClient connected. Client's address: %s\n",inet_ntoa(client_address.sin_addr));

        //read request from client
        int valread = read(clientFd,buf,sizeof(buf));
        //if request has error, return status code 403
        if(valread<=0)
        {
            sprintf(httpResponse, "HTTP/1.1 403 Forbidden\n Content-Type: text/plain\n Content-Length: 13\n\n403 Forbidden");
        }
        printf("\nHTTP Request: \n\n%sEnd of HTTP Request\n\n", buf);

        //skip GET / (hence i=5) to get to filepath, stop once space is detected (means filepath ended) and set it to null
        for(int i=5;i<BUFFERSIZE;i++)
        {
            if(buf[i]==' ')
            {
                targetPath[i-5]='\0';
                targetLength=i-5;
                break;
            }
        }
        //if request line is GET / with no filename, redirect to index.html by writing GET src/index.html
        if(targetLength ==0 && (strcmp(targetPath, "\0")==0))
        {
            printf("No specific file/target name. Default to index.html\n");
            strncpy(targetPath, "src/index.html", sizeof(targetPath));
            targetLength = 10;
        }
        //get target path from http request buffer and put to char array
        else
        {
            for(int i = 0;i<targetLength;i++)
            {
                targetPath[i] = buf[i+5];
            }
        }
        //printf("Target has char length of %d and content is: %s.\n",targetLength,targetPath);
        //get file extension
        for (int i=0;i<PATHSIZE;i++)
        {
            if(targetPath[i]=='.')
            {
                break;
            }
            fileNameLength++;
        }
        //printf("File name length without extension length %d\n",fileNameLength);
        fileNameLength+=1;
        for(int i = fileNameLength;i<PATHSIZE;i++)
        {
            if(targetPath[i]=='\0')
            {
                break;
            }
            fileExtension[i-fileNameLength]=targetPath[i];
        }
        //printf("Extension type: %s\n",fileExtension);

        //open file
        FILE *file = fopen(targetPath,"rb");
        //if can't open file, return null and write 404 error
        if(file == NULL)
        {
            printf("Client requested file cannot be found, error status 404.\n");
            sprintf(httpResponse,"HTTP/1.1 404 Not Found\nContent-Type: text/plain\n\n404 Not Found");
            printf("Response:\n%s\n",httpResponse);
            write(clientFd,httpResponse,strlen(httpResponse));
        }
        //else send http response and requested file
        else{
            //using extension name to get relevant content type field string, eg. html will mean content type is text/html
            for(int i=0;contentType[i].extension!=0;i++)
            {
                if(strncmp(fileExtension, contentType[i].extension, strlen(contentType[i].extension))==0)
                {
                    httpContent = contentType[i].extension;
                    break;
                }
            }
            //write and send http response
            sprintf(httpResponse,"HTTP/1.1 200 OK\nServer: James' Server v0.1\nContent-Type: %s\n\n",httpContent);
            write(clientFd, httpResponse, strlen(httpResponse));
            size_t n;
            char fileBuf[BUFFERSIZE]={0};
            //send file
            while((n=fread(fileBuf,1,sizeof(fileBuf),file))>0)
            {
                if(send(clientFd,fileBuf,n,0)!=n)
                {
                    perror("Couldn't send file.\n");
                    break;
                }
            }
            //close requested file, remember can't be null or else seg fault so keep it in this condition
            fclose(file);
        }

        //close client socket
        close(clientFd);
    }
    //close server socket
    close(serverFd);

    return 0;
}