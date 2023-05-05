#ifndef MENU_H
#define MENU_H

#include "../lvgl/lvgl-v8.3/lvgl.h"
#include "../ESP_Driver/esp.h"
#include "../Motor_Control/car_movement.h"
// Variables
//extern lv_obj_t * ui_menu;
//extern lv_obj_t * change_label;
extern uint8_t car_mode;

// Functions
void setScreen();
void menuInit();
//void print_debug(char* msg);
void printMode(char* mode);
void printIp(char* ip);
void printDebug(char* msg);
void printUltrasonicSensor(char* msg);
char* getModeString();
void changeButton();
#endif
