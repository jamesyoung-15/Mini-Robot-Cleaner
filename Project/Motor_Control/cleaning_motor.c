#include "cleaning_motor.h"

void cleaning_on()
{
	printDebug("Cleaning motor on");
	// move cleaning motor
	HAL_GPIO_WritePin(GPIOB,GPIO_PIN_5,GPIO_PIN_SET);
	HAL_GPIO_WritePin(GPIOA,GPIO_PIN_8,GPIO_PIN_RESET);

	clearReceivedBuffer();
}

void cleaning_off()
{
	// stop cleaning motor
	printDebug("Cleaning motor off");
	HAL_GPIO_WritePin(GPIOB,GPIO_PIN_5,GPIO_PIN_RESET);
	HAL_GPIO_WritePin(GPIOA,GPIO_PIN_8,GPIO_PIN_RESET);

	clearReceivedBuffer();
}
