// Header for esp driver

#ifndef ESP_H
#define ESP_H

// Includes
#include "stdio.h"
#include "string.h"
#include "stm32f1xx_hal.h"
#include "../LCD/gui/menu.h"
// Var

extern UART_HandleTypeDef huart3;
extern uint8_t single_buffer;
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
void sendData(char * command);
void showResponse();
void clearReceivedBuffer();

void echoOff();
void checkAT();

void resetEsp();
void connectWifi(char* ssid, char* passwd);
void sendResponse(char *response);
void sendWebsite();
void serverHandler();

void checkWifiState();
void checkIP();
void checkAPs();

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
