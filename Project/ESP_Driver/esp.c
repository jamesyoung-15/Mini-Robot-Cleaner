#include "esp.h"

// Documentation: https://docs.espressif.com/projects/esp-at/en/latest/esp32/AT_Command_Set/Wi-Fi_AT_Commands.html#cmd-wstate

#define RX_BUFFER_SIZE  1024

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

char html_file[2560];
//"<!DOCTYPE html> <body> <header> <h1>Mini Robot Cleaner</h1> </header> <main> <div class=\"container-area\"> <div class=\"joystick-container\" id=\"joystick-area\"> <div class=\"joystick\" id=\"nipple\"></div> </div> </div> </main> </body> <style> *{ font-family: monospace; font-size: 18px; } body { overflow: hidden; background-color: #0a0a23;; margin: 0; color: #f8f8f2; } header { text-align: center; background-color: #0a0a23; text-align: center; } main { background-color: #1b1b32; height: 100vh; } .container-area{ width: 70%; margin: 0 auto; display: flex; justify-content: space-between; flex-direction: row; flex-wrap: wrap; } .joystick-container{ position: relative; width: 640px; height: 480px; display: flex; flex-direction: column-reverse; margin: auto; } </style> <script src=\"https://yoannmoinet.github.io/nipplejs/javascripts/nipplejs.js\"></script> <script> var ip_address = \"192.168.40.104:80\"; function move(angle,speed) { if(speed>0.45) { if(angle<=35 || angle>335) { send(\"R-\"); } else if(angle>35 && angle<60) { send(\"FR-\"); } else if(angle>=60 && angle<=125) { send(\"F-\"); } else if(angle>125 && angle<145) { send(\"FL-\"); } else if(angle>=145 && angle<=210) { send(\"L-\");; } else if(angle>210 && angle<235) { send(\"BL-\"); } else if(angle>235 && angle<305) { send(\"B-\"); } else if(angle>305 && angle<335) { send(\"BR-\"); } } } function send(dir) { var xhr = new XMLHttpRequest(); xhr.open(\"GET\", \"http://\"+ip_address+\"/\" + dir, true); xhr.send(); } var options = { zone: document.getElementById('nipple'), mode: 'static', size: 100, position: {left:\"50%\", top:\"50%\"}, color: 'white', threshold: 1 }; manager = nipplejs.create(options); speed = 0; angle = 0; self.manager.on('start', function (event, nipple) { timer = setInterval(function() {move(angle,speed)},1500); }); self.manager.on('move', function (event, nipple) { speed = nipple.force; angle = nipple.angle.degree; }); self.manager.on('end', function () { if (timer) { clearInterval(timer); }send(\"sp-\"); }); </script> </html>";

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
	HAL_Delay(200);
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

// set website by appending ip address to html file
void setHTMLFile(char *ip)
{
		sprintf(
				html_file,
				"<!DOCTYPE html> <body> <header> <h1>Mini Robot Cleaner</h1> </header> <main> <div class=\"container-area\"> <div class=\"joystick-container\" id=\"joystick-area\"> <div class=\"joystick\" id=\"nipple\"></div> </div> </div> </main> </body> <style> *{ font-family: monospace; font-size: 18px; } body { overflow: hidden; background-color: #0a0a23;; margin: 0; color: #f8f8f2; } header { text-align: center; background-color: #0a0a23; text-align: center; } main { background-color: #1b1b32; height: 100vh; } .container-area{ width: 70%; margin: 0 auto; display: flex; justify-content: space-between; flex-direction: row; flex-wrap: wrap; } .joystick-container{ position: relative; width: 640px; height: 480px; display: flex; flex-direction: column-reverse; margin: auto; } </style> <script src=\"https://yoannmoinet.github.io/nipplejs/javascripts/nipplejs.js\"></script> <script> var ip_address = \"%s\"; function move(angle,speed) { if(speed>0.45) { if(angle<=35 || angle>335) { send(\"R-\"); } else if(angle>35 && angle<60) { send(\"FR-\"); } else if(angle>=60 && angle<=125) { send(\"F-\"); } else if(angle>125 && angle<145) { send(\"FL-\"); } else if(angle>=145 && angle<=210) { send(\"L-\");; } else if(angle>210 && angle<235) { send(\"BL-\"); } else if(angle>235 && angle<305) { send(\"B-\"); } else if(angle>305 && angle<335) { send(\"BR-\"); } } } function send(dir) { var xhr = new XMLHttpRequest(); xhr.open(\"GET\", \"http://\"+ip_address+\"/\" + dir, true); xhr.send(); } var options = { zone: document.getElementById('nipple'), mode: 'static', size: 100, position: {left:\"50%\", top:\"50%\"}, color: 'white', threshold: 1 }; manager = nipplejs.create(options); speed = 0; angle = 0; self.manager.on('start', function (event, nipple) { timer = setInterval(function() {move(angle,speed)},1500); }); self.manager.on('move', function (event, nipple) { speed = nipple.force; angle = nipple.angle.degree; }); self.manager.on('end', function () { if (timer) { clearInterval(timer); }send(\"sp-\"); }); </script> </html>",
				ip
				);
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
	sendData("AT+CIPCLOSE=0\r\n");
	HAL_Delay(100);
//	clearReceivedBuffer();
	__HAL_UART_ENABLE_IT(&huart3, UART_IT_RXNE);
}



// handles incoming requests
void serverHandler()
{
	// If an HTTP GET request header is found and requests for html page, then we give it default static webpage by sending HTML file to server
	if(strstr(buffer,"GET")!=NULL && (strstr(buffer,"html"))!=NULL)
	{
		sendWebsite();
		showResponse();
		clearReceivedBuffer();
	}
	clearReceivedBuffer();
}

void moveRight()
{
//	__HAL_UART_DISABLE_IT(&huart3, UART_IT_RXNE);
	printDebug("Right");
//	okResponse();
//	clearReceivedBuffer();
//	__HAL_UART_ENABLE_IT(&huart3, UART_IT_RXNE);
}
void moveLeft()
{
//	__HAL_UART_DISABLE_IT(&huart3, UART_IT_RXNE);
	printDebug("Left");
//	okResponse();
//	clearReceivedBuffer();
//	__HAL_UART_ENABLE_IT(&huart3, UART_IT_RXNE);
}

void moveForward()
{
	printDebug("Forward");

	// back right
	HAL_GPIO_WritePin(GPIOB,GPIO_PIN_13,GPIO_PIN_SET);
	HAL_GPIO_WritePin(GPIOB,GPIO_PIN_15,GPIO_PIN_RESET);

	// back left
	HAL_GPIO_WritePin(GPIOB,GPIO_PIN_12,GPIO_PIN_SET);
	HAL_GPIO_WritePin(GPIOB,GPIO_PIN_14,GPIO_PIN_RESET);
//	okResponse();
}

void moveBackward()
{
	printDebug("Backward");
//	okResponse();
}

void moveBackwardLeft()
{
//	__HAL_UART_DISABLE_IT(&huart3, UART_IT_RXNE);
	printDebug("Backward Left");
//	okResponse();
//	__HAL_UART_ENABLE_IT(&huart3, UART_IT_RXNE);
}

void moveBackwardRight()
{
//	__HAL_UART_DISABLE_IT(&huart3, UART_IT_RXNE);
	printDebug("Backward Right");
//	okResponse();
//	__HAL_UART_ENABLE_IT(&huart3, UART_IT_RXNE);
}

void moveForwardRight()
{
//	__HAL_UART_DISABLE_IT(&huart3, UART_IT_RXNE);
	printDebug("Forward Right");
//	okResponse();
//	__HAL_UART_ENABLE_IT(&huart3, UART_IT_RXNE);
}

void moveForwardLeft()
{
//	__HAL_UART_DISABLE_IT(&huart3, UART_IT_RXNE);
	printDebug("Forward Left");
//	okResponse();

//	__HAL_UART_ENABLE_IT(&huart3, UART_IT_RXNE);
}

void stopMovement()
{
//	__HAL_UART_DISABLE_IT(&huart3, UART_IT_RXNE);
	printDebug("Stop Car");
	HAL_GPIO_WritePin(GPIOB,GPIO_PIN_13,GPIO_PIN_RESET);
	HAL_GPIO_WritePin(GPIOB,GPIO_PIN_15,GPIO_PIN_RESET);
//	okResponse();
	clearReceivedBuffer();
//	__HAL_UART_ENABLE_IT(&huart3, UART_IT_RXNE);
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
