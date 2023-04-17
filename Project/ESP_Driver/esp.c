#include "esp.h"

// Documentation: https://docs.espressif.com/projects/esp-at/en/latest/esp32/AT_Command_Set/Wi-Fi_AT_Commands.html#cmd-wstate

#define RX_BUFFER_SIZE  2048

// Global Variables
char buffer[RX_BUFFER_SIZE]; //Buffer for received response from ESP8266
uint8_t single_buffer = 0;
uint32_t buffer_index = 0;
uint8_t request_receive = 0;
uint8_t detect_left = 0;
uint8_t detect_right = 0;
uint8_t detect_forward = 0;
uint8_t detect_backward = 0;
uint8_t detect_forward_left = 0;
uint8_t detect_forward_right = 0;
uint8_t detect_backward_right = 0;
uint8_t detect_backward_left = 0;
uint8_t detect_stop = 0;

char html_file[]=
//"<!DOCTYPE html> <body> <header> <h1>Mini Robot Cleaner</h1> </header> <main> <div class=\"test-area\"> <div class=\"top-row\"> <button class=\"button-style\" onclick=\"button(this)\" id=\"1\">UP</button> </div> <div class =\"bottom-row\"> <button class=\"button-style\" onclick=\"button(this)\" id=\"2\">LEFT</button> <button class=\"button-style\" onclick=\"button(this)\" id=\"3\">RIGHT</button> <button class=\"button-style\" onclick=\"button(this)\" id=\"4\">DOWN</button> </div> </div> </main> </body> <style> *{ font-family: monospace; font-size: 18px; } body { overflow: hidden; background-color: #0a0a23;; margin: 0; color: #f8f8f2; } header { text-align: center; background-color: #0a0a23; text-align: center; } main { background-color: #1b1b32; height: 100vh; } .button-style { margin: 15px; padding: 5px 20px; background-color: #0a0a23; color: #ffffff; } .test-area { margin: auto; width: 320px; text-align: center; } </style><script> var ip_address = \"http://192.168.40.104:80\"; var interval; function button(ele){ var x = ele.id; switch(x){ case '1': move(x,'F-'); console.log(x); break; case '2': move(x,'L-'); break; case '3': move(x,'R-'); break; case '4': move(x,'B-'); break; } } function move(x,dir) { document.getElementById(x).onmousedown = function(){ interval = setInterval(function(){ var xhr = new XMLHttpRequest(); xhr.open(\"GET\", \"/\" + dir, true); xhr.send(); },800)}; document.getElementById(x).onmouseup = function(){ clearInterval(interval); }; } </script> </html>";
"<!DOCTYPE html> <body> <header> <h1>Mini Robot Cleaner</h1> </header> <main> <div class=\"container-area\"> <div class=\"joystick-container\" id=\"joystick-area\"> <div class=\"joystick\" id=\"nipple\"></div> </div> </div> </main> </body> <style> *{ font-family: monospace; font-size: 18px; } body { overflow: hidden; background-color: #0a0a23;; margin: 0; color: #f8f8f2; } header { text-align: center; background-color: #0a0a23; text-align: center; } main { background-color: #1b1b32; height: 100vh; } .container-area{ width: 70%; margin: 0 auto; display: flex; justify-content: space-between; flex-direction: row; flex-wrap: wrap; } .joystick-container{ position: relative; width: 640px; height: 480px; display: flex; flex-direction: column-reverse; margin: auto; } </style> <script src=\"https://yoannmoinet.github.io/nipplejs/javascripts/nipplejs.js\"></script> <script> var ip_address = \"10.15.15.137\"; function move(angle,speed) { if(speed>0.45) { if(angle<=35 || angle>335) { send(\"R-\"); } else if(angle>35 && angle<60) { send(\"FR-\"); } else if(angle>=60 && angle<=125) { send(\"F-\"); } else if(angle>125 && angle<145) { send(\"FL-\"); } else if(angle>=145 && angle<=210) { send(\"L-\");; } else if(angle>210 && angle<235) { send(\"BL-\"); } else if(angle>235 && angle<305) { send(\"B-\"); } else if(angle>305 && angle<335) { send(\"BR-\"); } } } function send(dir) { var xhr = new XMLHttpRequest(); xhr.open(\"GET\", \"http://\"+ip_address+\"/\" + dir, true); xhr.send(); } var options = { zone: document.getElementById('nipple'), mode: 'static', size: 100, position: {left:\"50%\", top:\"50%\"}, color: 'white', threshold: 1 }; manager = nipplejs.create(options); speed = 0; angle = 0; self.manager.on('start', function (event, nipple) { timer = setInterval(function() {move(angle,speed)},600); }); self.manager.on('move', function (event, nipple) { speed = nipple.force; angle = nipple.angle.degree; }); self.manager.on('end', function () { if (timer) { clearInterval(timer); }send(\"sp-\"); }); </script> </html>";

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

uint8_t string_compare(char array1[], char array2[], uint16_t length)
{
	 uint16_t comVAR=0, i;
	 for(i=0;i<length;i++)
	   	{
	   		  if(array1[i]==array2[i])
	   	  		  comVAR++;
	   	  	  else comVAR=0;
	   	}
	 if (comVAR==length)
		 	return 1;
	 else 	return 0;
}

int string_contains(char bufferArray[], char searchedString[], uint16_t length)
{
	uint8_t result=0;
	for(uint16_t i=0; i<length; i++)
	{
		result = string_compare(&bufferArray[i], &searchedString[0], strlen(searchedString));
		if(result == 1)
			return i;
	}
	return -1;
}


// handles incoming requests
void serverHandler()
{
	// If an HTTP GET request header is found and requests for html page, then we give it default static webpage by sending HTML file to server
	if(strstr(buffer,"GET")!=NULL && (strstr(buffer,"html"))!=NULL)
	{
		sendWebsite();
		clearReceivedBuffer();
	}
}

void moveRight()
{
	__HAL_UART_DISABLE_IT(&huart3, UART_IT_RXNE);
	print_debug("Right");
	__HAL_UART_ENABLE_IT(&huart3, UART_IT_RXNE);
}
void moveLeft()
{
	__HAL_UART_DISABLE_IT(&huart3, UART_IT_RXNE);
	print_debug("Left");
	__HAL_UART_ENABLE_IT(&huart3, UART_IT_RXNE);
}

void moveForward()
{
	__HAL_UART_DISABLE_IT(&huart3, UART_IT_RXNE);
	print_debug("Forward");
	__HAL_UART_ENABLE_IT(&huart3, UART_IT_RXNE);
}

void moveBackward()
{
	__HAL_UART_DISABLE_IT(&huart3, UART_IT_RXNE);
	print_debug("Backward");
	__HAL_UART_ENABLE_IT(&huart3, UART_IT_RXNE);
}

void moveBackwardLeft()
{
	__HAL_UART_DISABLE_IT(&huart3, UART_IT_RXNE);
	print_debug("Backward Left");
	__HAL_UART_ENABLE_IT(&huart3, UART_IT_RXNE);
}

void moveBackwardRight()
{
	__HAL_UART_DISABLE_IT(&huart3, UART_IT_RXNE);
	print_debug("Backward Right");
	__HAL_UART_ENABLE_IT(&huart3, UART_IT_RXNE);
}

void moveForwardRight()
{
	__HAL_UART_DISABLE_IT(&huart3, UART_IT_RXNE);
	print_debug("Forward Right");
	__HAL_UART_ENABLE_IT(&huart3, UART_IT_RXNE);
}

void moveForwardLeft()
{
	__HAL_UART_DISABLE_IT(&huart3, UART_IT_RXNE);
	print_debug("Forward Left");
	__HAL_UART_ENABLE_IT(&huart3, UART_IT_RXNE);
}

void stopMovement()
{
	__HAL_UART_DISABLE_IT(&huart3, UART_IT_RXNE);
	print_debug("Stop Car");
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
        // get move car direction: check if buffer contains something like "/R-", as this is the command sent through HTTP GET header to tell direction, handle here as better to catch command earlier rather than wait till end of copying uart message to buffer
        if(buffer_index>3)
        {
        	// right
        	if(buffer[buffer_index-2]=='/' && buffer[buffer_index-1]=='R' && buffer[buffer_index=='-'])
        	{
        		detect_right = 1;
        	}
        	// left
        	if(buffer[buffer_index-2]=='/' && buffer[buffer_index-1]=='L' && buffer[buffer_index=='-'])
        	{
        		detect_left = 1;
        	}
        	// forward
        	if(buffer[buffer_index-2]=='/' && buffer[buffer_index-1]=='F' && buffer[buffer_index=='-'])
        	{
        		detect_forward = 1;
        	}
        	// backward
        	if(buffer[buffer_index-2]=='/' && buffer[buffer_index-1]=='B' && buffer[buffer_index=='-'])
        	{
        		detect_backward = 1;
        	}
        	// below is optional, for more precision
        	if(buffer[buffer_index-2]=='B' && buffer[buffer_index-1]=='L' && buffer[buffer_index=='-'])
			{
				detect_backward_left = 1;
			}
        	// backward right
        	if(buffer[buffer_index-2]=='B' && buffer[buffer_index-1]=='R' && buffer[buffer_index=='-'])
			{
				detect_backward_right = 1;
			}
        	// foward right
        	if(buffer[buffer_index-2]=='F' && buffer[buffer_index-1]=='R' && buffer[buffer_index=='-'])
			{
				detect_forward_right = 1;
			}
        	// forward left
        	if(buffer[buffer_index-2]=='F' && buffer[buffer_index-1]=='L' && buffer[buffer_index=='-'])
			{
				detect_forward_left = 1;
			}
        	// forward left
        	if(buffer[buffer_index-2]=='s' && buffer[buffer_index-1]=='p' && buffer[buffer_index=='-'])
			{
				detect_stop = 1;
			}

        }

        HAL_UART_Receive_IT(&huart3, (uint8_t *)&single_buffer, 1);
    }
}

// End File
