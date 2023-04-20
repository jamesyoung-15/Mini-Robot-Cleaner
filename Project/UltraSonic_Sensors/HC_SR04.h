/*
 * hc-sr04.h
 *
 *  Created on: Apr 17, 2023
 *      Author: hlwongbg
 */
#include "stm32f1xx_hal.h"

#ifndef INC_HC_SR04_1_H_
#define INC_HC_SR04_1_H_

extern TIM_HandleTypeDef htim1;
extern TIM_HandleTypeDef htim2;
extern TIM_HandleTypeDef htim3;

uint32_t HC_SR04_U1 ( void );
uint32_t HC_SR04_U2 ( void );
uint32_t HC_SR04_U3 ( void );

#endif /* INC_HC_SR04_H_ */
