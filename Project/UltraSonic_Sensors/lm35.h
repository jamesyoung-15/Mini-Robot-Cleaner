#ifndef LM35_H
#define LM35_H

#include "stm32f1xx_hal.h"

extern ADC_HandleTypeDef hadc1;
//extern DMA_HandleTypeDef DMA1_Channel1_IRQn;

float getTemperatureData();


#endif
