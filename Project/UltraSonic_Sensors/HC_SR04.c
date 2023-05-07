#include "HC_SR04.h"


// Middle Front sensor, Pins A4 (output) A6 (input)
uint32_t HC_SR04_U1 ( void )
{
	/* Set TRIG On */
	HAL_GPIO_WritePin (GPIOA, GPIO_PIN_4, GPIO_PIN_SET);
	HAL_Delay(15);
	HAL_GPIO_WritePin (GPIOA, GPIO_PIN_4, GPIO_PIN_RESET);
	/* wait for echo signal is off */
	while(HAL_GPIO_ReadPin(GPIOA,GPIO_PIN_6) == GPIO_PIN_RESET);
	/* measure time while high */
	__HAL_TIM_SET_COUNTER(&htim3,0);
	while(HAL_GPIO_ReadPin(GPIOA,GPIO_PIN_6) == GPIO_PIN_SET);
	uint16_t counter1 = __HAL_TIM_GET_COUNTER(&htim3);
	/* calculate distance(cm) */
	uint32_t dis1 = counter1 * .034 / 2;
	return dis1;
//	printDebug(d1);
}

// Right Front sensor, C9 (output) and C10 (input)
uint32_t HC_SR04_U2 ( void )
{
	uint32_t dis2 = 0;
	HAL_GPIO_WritePin (GPIOC, GPIO_PIN_9, GPIO_PIN_SET);
	HAL_Delay(15);
	HAL_GPIO_WritePin (GPIOC, GPIO_PIN_9, GPIO_PIN_RESET);
	while(HAL_GPIO_ReadPin(GPIOC,GPIO_PIN_10) == GPIO_PIN_RESET);
	__HAL_TIM_SET_COUNTER(&htim2,0);
	while(HAL_GPIO_ReadPin(GPIOC,GPIO_PIN_10) == GPIO_PIN_SET);
	uint16_t counter2 = __HAL_TIM_GET_COUNTER(&htim2);
	dis2 = counter2 * .034 / 2;
	return dis2;
}

// Left Front sensor, Pins A5 (output) and A7 (input)
uint32_t HC_SR04_U3 ( void )
{
	uint32_t dis3 = 0;
	HAL_GPIO_WritePin (GPIOA, GPIO_PIN_5, GPIO_PIN_SET);
	HAL_Delay(15);
	HAL_GPIO_WritePin (GPIOA, GPIO_PIN_5, GPIO_PIN_RESET);
	while(HAL_GPIO_ReadPin(GPIOA,GPIO_PIN_7) == GPIO_PIN_RESET);
	__HAL_TIM_SET_COUNTER(&htim1,0);
	while(HAL_GPIO_ReadPin(GPIOA,GPIO_PIN_7) == GPIO_PIN_SET);
	uint16_t counter3 = __HAL_TIM_GET_COUNTER(&htim1);
	dis3 = counter3 * .034 / 2;
	return dis3;
}

