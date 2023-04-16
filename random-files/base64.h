#ifndef BASE64_H
#define BASE64_H

#include <stdio.h>
#include <stdint.h>
#include <stdlib.h>
#include <string.h>

char base64Table[65] =
 {
    'A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J', 'K', 'L', 'M', 'N', 'O', 'P',
    'Q', 'R', 'S', 'T', 'U', 'V', 'W', 'X', 'Y', 'Z', 'a', 'b', 'c', 'd', 'e', 'f',
    'g', 'h', 'i', 'j', 'k', 'l', 'm', 'n', 'o', 'p', 'q', 'r', 's', 't', 'u', 'v',
    'w', 'x', 'y', 'z', '0', '1', '2', '3', '4', '5', '6', '7', '8', '9', '+', '/','\0'
 };

void hexToBin(char* hexdec,char*binary_result)
{
  long int i = 0;

  while (hexdec[i]) {

      switch (hexdec[i]) {
      case '0':
        //   printf("0000");
          strcat(binary_result,"0000");
          break;
      case '1':
        //   printf("0001");
          strcat(binary_result,"0001");
          break;
      case '2':
        //   printf("0010");
          strcat(binary_result,"0010");
          break;
      case '3':
        //   printf("0011");
          strcat(binary_result,"0011");
          break;
      case '4':
        //   printf("0100");
          strcat(binary_result,"0100");
          break;
      case '5':
        //   printf("0101");
          strcat(binary_result,"0101");
          break;
      case '6':
        //   printf("0110");
          strcat(binary_result,"0110");
          break;
      case '7':
        //   printf("0111");
          strcat(binary_result,"0111");
          break;
      case '8':
        //   printf("1000");
          strcat(binary_result,"1000");
          break;
      case '9':
        //   printf("1001");
          strcat(binary_result,"1001");
          break;
      case 'A':
      case 'a':
        //   printf("1010");
          strcat(binary_result,"1010");
          break;
      case 'B':
      case 'b':
        //   printf("1011");
          strcat(binary_result,"1011");
          break;
      case 'C':
      case 'c':
        //   printf("1100");
          strcat(binary_result,"1100");
          break;
      case 'D':
      case 'd':
        //   printf("1101");
          strcat(binary_result,"1101");
          break;
      case 'E':
      case 'e':
        //   printf("1110");
          strcat(binary_result,"1110");
          break;
      case 'F':
      case 'f':
        //   printf("1111");
          strcat(binary_result,"1111");
          break;
    //   default:
        //   printf("\nInvalid hexadecimal digit %c",
                //   hexdec[i]);
      }
      i++;
  }
}

void binToBase64(char* input,char* output)
{
  char buffer[40]={0};
  uint16_t i = 0;
  int length = strlen(input);
  while(input[i]!='\0')
  {
    if((length-(i+6))>=0)
    {
      char temp[6]={0};
      for(int j=0;j<6;j++)
      {
        // printf("%c",input[i]);
        temp[j] = input[i];
        i++;
      }
      char *endptr;
      int index = strtol(temp,&endptr,2);
      char character[] = {base64Table[index],'\0'};
      strcat(buffer, character);
      // printf("%c ",base64Table[index]);
    }
    else 
    {
      char temp[6]={0};
      int padding_length = 6-(length-i);
      for(int j=0;j<length-i;j++)
      {
        temp[j] = input[i+j];
      }
      for(int j=6-padding_length;j<6;j++)
      {
        temp[j] = '0';
      }
      i+=length-i;
      char *endptr;
      int index = strtol(temp,&endptr,2);
      char character[] = {base64Table[index],'\0'};
      strcat(buffer, character);
      // printf("%c ",base64Table[index]);
      // printf("=");
      // strcat(output, "=");
    }
  }
  // printf("\nBuffer: %s\n",buffer);
  strcpy(output,buffer);
}



#endif