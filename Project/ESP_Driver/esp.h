// Header for esp driver

#ifndef ESP_H
#define ESP_H

#include "string.h"
#include "stm32f1xx_hal.h"



//initialize esp
void esp_init(char *ssid, char *passwd);


// Create web server
void create_server();

// Send char data to web server
void sendData(char* data);

// Receive char data from web server
void receiveData(char* data);


// Get IP of device
char* getIP();



#endif
