#include "esp.h"

// Documentation: https://docs.espressif.com/projects/esp-at/en/latest/esp32/AT_Command_Set/Wi-Fi_AT_Commands.html#cmd-wstate

#define RX_BUFFER_SIZE  1024

// Global Variables

// uart data variables
char buffer[RX_BUFFER_SIZE]; //Buffer for received response from ESP8266
uint8_t single_buffer = 0;
uint32_t buffer_index = 0;
uint8_t request_receive = 0;

// interrupts instructions from udp
uint8_t detect_left = 0;
uint8_t detect_right = 0;
uint8_t detect_forward = 0;
uint8_t detect_backward = 0;
uint8_t detect_forward_left = 0;
uint8_t detect_forward_right = 0;
uint8_t detect_backward_right = 0;
uint8_t detect_backward_left = 0;
uint8_t detect_stop = 0;
uint8_t detect_request = 0;
uint8_t detect_change = 0;
uint8_t start_cleaner = 0;
uint8_t stop_cleaner = 0;

char html_file[]="<!DOCTYPE html> <html data-theme=\"dark\"> <head> <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\"> <link rel=\"stylesheet\" href=\"https://cdn.jsdelivr.net/npm/@picocss/pico@1/css/pico.min.css\"> </head> <body> <h1 style=\"text-align: center;\">Sensor Info</h1> <table role=\"grid\"> <thead> <tr> <th scope=\"col\">Temperature</th> <th scope=\"col\">Humidty</th> <th scope=\"col\">CO2</th> <th scope=\"col\">TVOC</th> </tr> </thead> <tbody> <tr> <td> °C</td> <td> %</td> <td> ppm</td> <td> ppm</td> </tr> </tbody> </table> </body> </html>";

void sendData(char * command)
{
	clearReceivedBuffer();
	// Send command, wait till UART finishes transmitting command
    HAL_UART_Transmit(&huart3, (uint8_t *)command,strlen(command),5000);
    while(HAL_UART_GetState(&huart3) == HAL_UART_STATE_BUSY_TX);
}

// Show the response received from ESP8266 via UART3, writes response to LCD screen
void showResponse()
{
	char temp[RX_BUFFER_SIZE+100];
	sprintf(temp,"Buffer response: \n%s", buffer);
	printDebug(temp);
    clearReceivedBuffer();
}

// Reset the buffer
void clearReceivedBuffer()
{
    buffer_index = 0;
    memset(buffer,0,sizeof(buffer));
}


// Send "AT" to check if working, should respond with OK
void checkAT()
{
	sendData("AT\r\n");
	HAL_Delay(100);
	showResponse();
}

// Turn off echo, so instead of receive +AT\n\n OK we just get OK
void echoOff()
{
	sendData("ATE0\r\n");
	HAL_Delay(500);
	clearReceivedBuffer();
}

// Reset module, clear settings if needed
void resetEsp()
{
	sendData("AT+RST\r\n");
	HAL_Delay(5000);
	clearReceivedBuffer();
}

// check esp8266 firmware version
void verAT()
{
	sendData("AT+GMR\r\n");
	HAL_Delay(200);
	showResponse();
}

// set mac address of esp8266, for needing to connect to eduroam by setting mac address to be same as my laptop
void setMacAddress(char *mac_addr)
{
	char at_command[40];
	sprintf(at_command,"AT+CIPSTAMAC=\"%s\"\r\n",mac_addr);
	sendData(at_command);
	HAL_Delay(200);
	clearReceivedBuffer();
}

void checkMac()
{
	sendData("AT+CIPAPMAC?");
	HAL_Delay(50);
	showResponse();
}

// Connect to WIFI and start server listening at port 80
void connectWifi(char* ssid, char* passwd)
{
	// set to station mode
	sendData("AT+CWMODE=1\r\n");
	HAL_Delay(200);
//	showResponse();
	clearReceivedBuffer();
	// enable station dhcp, so router can give it a ip
//	sendData("AT+CWDHCP=1,1\r\n");
//	HAL_Delay(200);
//	showResponse();
//	clearReceivedBuffer();
	// connect to wifi
	char wifi_info[100]={0};
	sprintf(wifi_info,"AT+CWJAP=\"%s\",\"%s\"\r\n",ssid,passwd);
	sendData(wifi_info);
	HAL_Delay(5000);
//	showResponse();
	clearReceivedBuffer();
//	checkIP();
}

// disconnect wifi
void disconnectWifi()
{
	sendData("AT+CWQAP");
	HAL_Delay(100);
	printDebug("Disconnect Wi-Fi");
	clearReceivedBuffer();
}

// connect to mqtt broker, for project connect to local mosquitto service
void connectMQTT(char*ip_address)
{
	// set mqtt user config, 2nd param means over tcp, 3rd is clientid, 4th is broker username, 5th is broker passwd, rest is certs and unrelated
	sendData("AT+MQTTUSERCFG=0,1,\"ESP8266\",\"espressif\",\"1234567890\",0,0,\"\"\r\n");
	HAL_Delay(200);
	showResponse();

	// connect to mqtt ip address, using port 1883
//	char at_command[40];
//	sprintf(at_command,"AT+MQTTCONN=0,\"%s\",1883,1\r\n",ip_address);
//	sendData(at_command);
//	HAL_Delay(200);
//	showResponse();
//	HAL_Delay(100);

}

// subscribe to a topic
void subMQTT(char* topic)
{
	char at_command[40];
	// subscribe to topic
	sprintf(at_command,"AT+MQTTSUB=0,\"%s\"\r\n",topic);
	sendData(at_command);
	showResponse();
//	clearReceivedBuffer();
}

// publish to a topic
void pubMQTT(char* topic)
{
	char at_command[40];
	// publish to topic
	sprintf(at_command,"AT+MQTTPUB=0,\"%s\"\r\n",topic);
	sendData(at_command);
//	showResponse();
	clearReceivedBuffer();
}

// unsubscribe to mqtt topic
void unsubMQTT(char *topic)
{
	char at_command[40];
	sprintf(at_command,"AT+MQTTUNSUB=0,\"%s\"\r\n",topic);
	sendData(at_command);
	HAL_Delay(100);
//	showResponse();
	clearReceivedBuffer();
}

// debug mqtt
void queryMQTT()
{
	sendData("AT+MQTTCONN?\r\n");
//	sendData("AT+MQTTSUB?");
	HAL_Delay(200);
	showResponse();
}

// close mqtt
void resetMQTT()
{
	sendData("AT+MQTTCLEAN=0\r\n");
	HAL_Delay(200);
//	showResponse();
	clearReceivedBuffer();
}

// create udp server
void createUDPServer()
{
	// allow multiple connections
	sendData("AT+CIPMUX=1\r\n");
	HAL_Delay(1000);
	clearReceivedBuffer();
	// create udp server with own ip at port 4545
	sendData("AT+CIPSTART=0,\"UDP\",\"0.0.0.0\",4545,4545,2\r\n");
	HAL_Delay(3000);
	showResponse();
}

// create a tcp server, for web browser and http server
void createTCPServer()
{
	// enable multiple connections, for tcp
	sendData("AT+CIPMUX=1\r\n");
	HAL_Delay(200);
	clearReceivedBuffer();
	// create tcp server, listening at port 80
	sendData("AT+CIPSERVER=1,80\r\n");
	HAL_Delay(200);
//	showResponse();
	clearReceivedBuffer();
}



// sends HTTP response with some data to server
void sendResponse(char response[])
{
	char data[100] = {0};
	char http_response[200] = {0};
	char at_command[50] = {0};
	// Create HTTP response, append relevant data to response
	sprintf(data,"Data: %s",response);
	sprintf(http_response,"HTTP/1.1 200 OK\r\nContent-Length: %i\r\nContent-Type: text/plain\r\n\r\n%s",strlen(data),data);
	// Send data through ESP8266
	sprintf(at_command,"AT+CIPSEND=0,%i\r\n",strlen(http_response));
	sendData(at_command);
	HAL_Delay(100);
	sendData(http_response);
	HAL_Delay(200);
	showResponse();
	sendData("AT+CIPCLOSE=0\r\n");
	clearReceivedBuffer();
}

// send simple HTTP response code 200
void okResponse()
{
	char resp[] = "HTTP/1.1 200 OK\r\n\r\n";
	char at_command[50]={0};
	sprintf(at_command,"AT+CIPSEND=0,%i\r\n",strlen(resp));
	sendData(at_command);
	HAL_Delay(10);
	sendData(resp);
	HAL_Delay(10);
	sendData("AT+CIPCLOSE=0\r\n");
	clearReceivedBuffer();
}



// sends html file to server
void sendWebsite()
{
	__HAL_UART_DISABLE_IT(&huart3, UART_IT_RXNE);
	char at_command[50] = {0};
	sprintf(at_command,"AT+CIPSEND=0,%i\r\n",strlen(html_file));
	sendData(at_command);
	HAL_Delay(100);
	sendData(html_file);
	HAL_Delay(100);
//	sendData("AT+CIPCLOSE=0\r\n");
	HAL_Delay(100);
	clearReceivedBuffer();
	__HAL_UART_ENABLE_IT(&huart3, UART_IT_RXNE);
}

void sendUDPData(char* ip_address)
{
	float temp = getTemperatureData();
//	float temp =0;
	char data[80] = {0};
	if(car_mode == 0)
		sprintf(data,"Mode: Manual\nTemperature: %.2f °C",temp);
	else if(car_mode==1)
		sprintf(data,"Mode: Automatic\nTemperature: %.2f °C",temp);
	char at_command[50]={0};
	sprintf(at_command,"AT+CIPSEND=0,%i,\"%s\",4545\r\n",strlen(data),ip_address);
	sendData(at_command);
	HAL_Delay(100);
	sendData(data);
	HAL_Delay(100);
	clearReceivedBuffer();
}



// handles incoming requests
void serverHandler()
{
	// If an HTTP GET request header is found and requests for html page, then we give it default static webpage by sending HTML file to server
//	if(strstr(buffer,"GET")!=NULL && (strstr(buffer,"html"))!=NULL)
	if(strstr(buffer,"GET")!=NULL)
	{
		sendWebsite();
		showResponse();
		clearReceivedBuffer();
	}
	clearReceivedBuffer();
}


// Query WIFI state, response: 0 not started, 1 connected but no IP, 2 connected and has IP, 3 connecting/reconnecting, 4 disconnect
void checkWifiState()
{
	sendData("AT+CWJAP?\r\n");
	HAL_Delay(100);
	showResponse();
}

// Get WIFI IP
void checkIP()
{
	sendData("AT+CIFSR\r\n");
	HAL_Delay(100);
	char temp[50]={0};
	if(strstr(buffer,"STAIP")!=NULL)
	{
		char *find = strstr(buffer,"STAIP");
		int pos = find - buffer;
		pos += 7;
		int i =0;
		while(buffer[pos]!='"')
		{
			temp[i] = buffer[pos];
			pos++;
			i++;
		}
	}
	else
	{
		sprintf(temp,"Error Reading IP.");
	}
	if(strstr(temp,"0.0.0.0")!=NULL)
	{
		sprintf(temp,"Error connecting.");
	}
	sprintf(buffer,"IP: %s", temp);
	printIp(buffer);
	clearReceivedBuffer();
//	showResponse();
}

// Check list of available APs
void checkAPs()
{
	sendData("AT+CWLAP");;
	HAL_Delay(100);
	showResponse();
}

// UART callback function, adds response to buffer
void HAL_UART_RxCpltCallback(UART_HandleTypeDef *huart){
    if(huart->Instance==USART3)
    {
    	// check overflow
        if(buffer_index >= (RX_BUFFER_SIZE-1))
        {
        	printDebug("Overflow");
        	clearReceivedBuffer();
        }
        // add character to buffer
        else
        {
            buffer[buffer_index] = single_buffer;
            buffer_index++;
        }
        // if two consecutive \r\n, means end of command request (usually for handling http requests) because end of http request ends like this
        if(buffer_index > 5)
		{
        		if(buffer[buffer_index-4] == '\r' && buffer[buffer_index-3] == '\n' && buffer[buffer_index-2] == '\r' && buffer[buffer_index-1] == '\n')
        			request_receive = 1;
		}
        // get move car direction: check if buffer contains something like "/R-"
        if(buffer_index>=3)
        {
        	// right
        	if(buffer[buffer_index-2]=='/' && buffer[buffer_index-1]=='R')
        	{
        		detect_right = 1;
        	}
        	// left
        	if(buffer[buffer_index-2]=='/' && buffer[buffer_index-1]=='L')
        	{
        		detect_left = 1;
        	}
        	// forward
        	if(buffer[buffer_index-2]=='/' && buffer[buffer_index-1]=='F')
        	{
        		detect_forward = 1;
        	}
        	// backward
        	if(buffer[buffer_index-2]=='/' && buffer[buffer_index-1]=='B')
        	{
        		detect_backward = 1;
        	}
        	if(buffer[buffer_index-2]=='s' && buffer[buffer_index-1]=='p')
			{
				detect_stop = 1;
			}
        	// below is optional, for more precision
        	if(buffer[buffer_index-2]=='B' && buffer[buffer_index-1]=='L')
			{
				detect_backward_left = 1;
			}
        	// backward right
        	if(buffer[buffer_index-2]=='B' && buffer[buffer_index-1]=='R')
			{
				detect_backward_right = 1;
			}
        	// foward right
        	if(buffer[buffer_index-2]=='F' && buffer[buffer_index-1]=='R')
			{
				detect_forward_right = 1;
			}
        	// forward left
        	if(buffer[buffer_index-2]=='F' && buffer[buffer_index-1]=='L')
			{
				detect_forward_left = 1;
			}

        	// change mode wirelessly
        	if(buffer[buffer_index-2]=='/' && buffer[buffer_index-1]=='C')
			{
				detect_change = 1;
			}
        	if(buffer[buffer_index-2]=='/' && buffer[buffer_index-1]=='G')
			{
				detect_request = 1;
			}

        	// cleaning motor controls
        	if(buffer[buffer_index-2]=='G' && buffer[buffer_index-1]=='C')
        	{
        		start_cleaner = 1;
        	}
        	if(buffer[buffer_index-2]=='S' && buffer[buffer_index-1]=='C')
        	{
        		stop_cleaner =1;
        	}


        }
        HAL_UART_Receive_IT(&huart3, (uint8_t *)&single_buffer, 1);
    }
}

// End File
