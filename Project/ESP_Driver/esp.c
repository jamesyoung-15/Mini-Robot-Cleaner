#include "esp.h"

// Documentation: https://docs.espressif.com/projects/esp-at/en/latest/esp32/AT_Command_Set/Wi-Fi_AT_Commands.html#cmd-wstate

#define RX_BUFFER_SIZE  2048

// Global Variables
char buffer[RX_BUFFER_SIZE]; //Buffer for received response from ESP8266
uint8_t single_buffer = 0;
uint32_t buffer_index = 0;
uint8_t detect_server =0;

//char html_file[] = "<!DOCTYPE html> <body> <header> <h1>Mini Robot Cleaner</h1> </header> <main> <div class=\"test-area\"> <div class=\"top-row\"> <button class=\"button-style\" onclick=\"button(this)\" id=\"1\">UP</button> </div> <div class =\"bottom-row\"> <button class=\"button-style\" onclick=\"button(this)\" id=\"2\">LEFT</button> <button class=\"button-style\" onclick=\"button(this)\" id=\"3\">RIGHT</button> <button class=\"button-style\" onclick=\"button(this)\" id=\"4\">DOWN</button> </div> </div> </main> </body> <style> *{ font-family: monospace; font-size: 18px; } body { overflow: hidden; background-color: #0a0a23;; margin: 0; color: #f8f8f2; } header { text-align: center; background-color: #0a0a23; text-align: center; } main { background-color: #1b1b32; height: 100vh; } .button-style { margin: 15px; padding: 5px 20px; background-color: #0a0a23; color: #ffffff; } .test-area { margin: auto; width: 320px; text-align: center; } </style> <script src=\"https://yoannmoinet.github.io/nipplejs/javascripts/nipplejs.js\"></script> <script> var ip_address = \"http://0.0.0.0:80\"; var interval; function button(ele){ var x = ele.id; switch(x){ case '1': move(x,'Forward'); console.log(x); break; case '2': move(x,'Left'); break; case '3': move(x,'Right'); break; case '4': move(x,'Backward'); break; } } function move(x,dir) { document.getElementById(x).onmousedown = function(){ interval = setInterval(function(){ fetch(ip_address,{ method:\"POST\", body: \"Direction: \"+dir+\"\\n\\n\" }) },500)}; document.getElementById(x).onmouseup = function(){ clearInterval(interval); }; } </script> </html>";
char html_file[]=
"<!DOCTYPE html> <body> <header> <h1>Mini Robot Cleaner</h1> </header> <main> <div class=\"test-area\"> <div class=\"top-row\"> <button class=\"button-style\" onclick=\"button(this)\" id=\"1\">UP</button> </div> <div class =\"bottom-row\"> <button class=\"button-style\" onclick=\"button(this)\" id=\"2\">LEFT</button> <button class=\"button-style\" onclick=\"button(this)\" id=\"3\">RIGHT</button> <button class=\"button-style\" onclick=\"button(this)\" id=\"4\">DOWN</button> </div> </div> </main> </body> <style> *{ font-family: monospace; font-size: 18px; } body { overflow: hidden; background-color: #0a0a23;; margin: 0; color: #f8f8f2; } header { text-align: center; background-color: #0a0a23; text-align: center; } main { background-color: #1b1b32; height: 100vh; } .button-style { margin: 15px; padding: 5px 20px; background-color: #0a0a23; color: #ffffff; } .test-area { margin: auto; width: 320px; text-align: center; } </style> <script src=\"https://yoannmoinet.github.io/nipplejs/javascripts/nipplejs.js\"></script> <script> var ip_address = \"http://192.168.40.104:80\"; var interval; function button(ele){ var x = ele.id; switch(x){ case '1': move(x,'Forward'); console.log(x); break; case '2': move(x,'Left'); break; case '3': move(x,'Right'); break; case '4': move(x,'Backward'); break; } } function move(x,dir) { document.getElementById(x).onmousedown = function(){ interval = setInterval(function(){ var xhr = new XMLHttpRequest(); xhr.open(\"GET\", \"/go?=\" + dir, true); xhr.send(); },800)}; document.getElementById(x).onmouseup = function(){ clearInterval(interval); }; } </script> </html>";


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
	sprintf(temp,"Size: %d\n%s", strlen(buffer),buffer);
	print_debug(temp);
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
	HAL_Delay(1000);
	showResponse();
}

// Turn off echo
void echoOff()
{
	sendData("ATE0\r\n");
	HAL_Delay(500);
	clearReceivedBuffer();
}

// Reset module
void resetEsp()
{
	sendData("AT+RST\r\n");
	HAL_Delay(5000);
	clearReceivedBuffer();
}


// Connect to WIFI
void connectWifi(char* ssid, char* passwd)
{
	sendData("AT+CWMODE=1\r\n");
	HAL_Delay(200);
	sendData("AT+CWDHCP=1,1\r\n");
	HAL_Delay(200);
	sendData("AT+CIPMUX=1\r\n");
	HAL_Delay(200);
	sendData("AT+CIPSERVER=1,80\r\n");
	HAL_Delay(200);
	char wifi_info[100]={0};
	sprintf(wifi_info,"AT+CWJAP=\"%s\",\"%s\"\r\n",ssid,passwd);
	sendData(wifi_info);
	HAL_Delay(5000);
	clearReceivedBuffer();
//	showResponse();
//	HAL_Delay(1000);
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

// sends html file to server
void sendWebsite()
{
	char at_command[50] = {0};
	sprintf(at_command,"AT+CIPSEND=0,%i\r\n",strlen(html_file));
	sendData(at_command);
	HAL_Delay(100);
	sendData(html_file);
	HAL_Delay(100);
	sendData("AT+CIPCLOSE=0\r\n");
	HAL_Delay(100);
	clearReceivedBuffer();
}

// web socket handshake response, abandon for now can't get it to work
//void sendHandShake(char requestKey[])
//{
//	char response[400]={0};
//	char returnKey[60]={0};
//	print_debug(requestKey);
//	generate_key(requestKey,returnKey);
////	sprintf(printStuff,"%s \n %s",requestKey,returnKey);
////	print_debug(printStuff);
//	sprintf(response,"HTTP/1.1 101 Switching Protocols\r\nUpgrade: websocket\r\nConnection: Upgrade\r\nSec-WebSocket-Accept: %s\r\n\r\n",returnKey);
////	print_debug(response);
//	clearReceivedBuffer();
//	char at_command[50] = {0};
//	sprintf(at_command,"AT+CIPSEND=0,%i\r\n",strlen(response));
//	sendData(at_command);
//	HAL_Delay(200);
//	sendData(response);
//	HAL_Delay(4000);
//	sendData("AT+CIPCLOSE=0\r\n");
//	HAL_Delay(100);
//	clearReceivedBuffer();
//
//}

// handles incoming requests
void serverHandler()
{
	__HAL_UART_DISABLE_IT(&huart3, UART_IT_RXNE);
	// If an HTTP GET request header is found and requests for html page, then we give it default static webpage by sending HTML file to server
	if(strstr(buffer,"GET")!=NULL && (strstr(buffer,"html"))!=NULL)
	{
		sendWebsite();
		clearReceivedBuffer();
	}

	// If an HTTP POST request is detected, this means that the joystick is being moved
	else if(strstr(buffer,"GET")!=NULL)
	{
		showResponse();
		// todo
		// if forward string found, move forward
		if(strstr(buffer,"Forward")!=NULL)
		{
			print_debug("Forward");
		}
		else if(strstr(buffer,"Left")!=NULL)
		{

			print_debug("Left");
		}
		else if(strstr(buffer,"Right")!=NULL)
		{
			print_debug("Right");
		}
		else if(strstr(buffer,"Backward")!=NULL)
		{
			print_debug("Backward");
		}
		clearReceivedBuffer();
	}
	//	else if(strstr(buffer,"websocket")!=NULL)
	//	{
	//		char temp[60]={0};
	//		char* find = strstr(buffer,"WebSocket-Key");
	//		int pos = find - buffer;
	//		pos = pos + strlen("WebSocket-Key")+2;
	//		for(int i=0;i<24;i++)
	//		{
	//			temp[i] = buffer[pos];
	//			pos++;
	//		}
	////		print_debug(temp);
	//		sendHandShake(temp);
	//	}
	__HAL_UART_ENABLE_IT(&huart3, UART_IT_RXNE);
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
	char temp[30]={0};
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
		sprintf(temp,"Error");
	}
	sprintf(buffer,temp);
	showResponse();
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
        	buffer_index=RX_BUFFER_SIZE-1;
        }

        else
        {
            buffer[buffer_index] = single_buffer;
            buffer_index++;
        }

        if(buffer_index > 5)
		{
        		if(buffer[buffer_index-4] == '\r' && buffer[buffer_index-3] == '\n' && buffer[buffer_index-2] == '\r' && buffer[buffer_index-1] == '\n')
        			detect_server = 1;
		}
        HAL_UART_Receive_IT(&huart3, (uint8_t *)&single_buffer, 1);
    }
}

// End File
