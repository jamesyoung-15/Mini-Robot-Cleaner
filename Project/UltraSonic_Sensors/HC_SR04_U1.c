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
