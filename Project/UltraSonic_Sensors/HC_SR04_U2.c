uint32_t HC_SR04_U2 ( void )
{
	//Second sensor
	uint32_t dis2 = 0;
	HAL_GPIO_WritePin (GPIOA, GPIO_PIN_5, GPIO_PIN_SET);
	HAL_Delay(15);
	HAL_GPIO_WritePin (GPIOA, GPIO_PIN_5, GPIO_PIN_RESET);
	while(HAL_GPIO_ReadPin(GPIOA,GPIO_PIN_7) == GPIO_PIN_RESET);
	__HAL_TIM_SET_COUNTER(&htim2,0);
	while(HAL_GPIO_ReadPin(GPIOA,GPIO_PIN_7) == GPIO_PIN_SET);
	uint16_t counter2 = __HAL_TIM_GET_COUNTER(&htim2);
	dis2 = counter2 * .034 / 2;
	return dis2;
}
