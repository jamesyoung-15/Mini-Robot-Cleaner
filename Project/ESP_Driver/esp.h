// Header for esp driver

#ifndef ESP_H
#define ESP_H

// Includes

#include "stdio.h"
#include "string.h"
#include "stm32f1xx_hal.h"
#include "../LCD/gui/menu.h"

// Variables

// uart variables
extern UART_HandleTypeDef huart3;
extern uint8_t single_buffer;

// sent data handle variables
extern uint8_t request_receive;
extern uint8_t detect_left;
extern uint8_t detect_right;
extern uint8_t detect_forward;
extern uint8_t detect_backward;
extern uint8_t detect_forward_left;
extern uint8_t detect_forward_right;
extern uint8_t detect_backward_right;
extern uint8_t detect_backward_left;
extern uint8_t detect_stop;

// Functions

// uart functions
void sendData(char * command);
void showResponse();
void clearReceivedBuffer();

// deub esp functions
void echoOff();
void checkAT();

// at command functions for connecting

// basic init
void resetEsp();
void connectWifi(char* ssid, char* passwd);
// mqtt functions
void connectMQTT(char*ip_address);
void subMQTT(char* topic);
void unsubMQTT(char *topic);
void queryMQTT();
void resetMQTT();
// tcp and http functions
void sendResponse(char *response);
void okResponse();
void setHTMLFile(char*ip);
void sendWebsite();
void serverHandler();
void createTCPServer();
void createUDPServer();


// query functions
void checkWifiState();
void checkIP();
void checkAPs();

// robot car movement handlers
void moveRight();
void moveLeft();
void moveForward();
void moveBackward();
void moveBackwardLeft();
void moveBackwardRight();
void moveForwardRight();
void moveForwardLeft();
void stopMovement();

#endif
