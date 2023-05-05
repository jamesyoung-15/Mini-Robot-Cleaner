#include "car_movement.h"


void moveRight()
{
	printDebug("Right");

	// stop left motor
	HAL_GPIO_WritePin(GPIOB,GPIO_PIN_13,GPIO_PIN_RESET);
	HAL_GPIO_WritePin(GPIOB,GPIO_PIN_15,GPIO_PIN_RESET);

	// right motor on
	HAL_GPIO_WritePin(GPIOB,GPIO_PIN_12,GPIO_PIN_SET);
	HAL_GPIO_WritePin(GPIOB,GPIO_PIN_14,GPIO_PIN_RESET);
//	okResponse();
	clearReceivedBuffer();
//
}
void moveLeft()
{
	// stop right motor
	HAL_GPIO_WritePin(GPIOB,GPIO_PIN_12,GPIO_PIN_RESET);
	HAL_GPIO_WritePin(GPIOB,GPIO_PIN_14,GPIO_PIN_RESET);


	// left motor on
	HAL_GPIO_WritePin(GPIOB,GPIO_PIN_13,GPIO_PIN_SET);
	HAL_GPIO_WritePin(GPIOB,GPIO_PIN_15,GPIO_PIN_RESET);
//	okResponse();
	printDebug("Left");
	clearReceivedBuffer();
}

void moveForward()
{
	printDebug("Forward");

	// left motor
	HAL_GPIO_WritePin(GPIOB,GPIO_PIN_13,GPIO_PIN_SET);
	HAL_GPIO_WritePin(GPIOB,GPIO_PIN_15,GPIO_PIN_RESET);

//	// right motor
	HAL_GPIO_WritePin(GPIOB,GPIO_PIN_12,GPIO_PIN_SET);
	HAL_GPIO_WritePin(GPIOB,GPIO_PIN_14,GPIO_PIN_RESET);
//	okResponse();
	clearReceivedBuffer();
}

void moveBackward()
{

	HAL_GPIO_WritePin(GPIOB,GPIO_PIN_13,GPIO_PIN_RESET);
	HAL_GPIO_WritePin(GPIOB,GPIO_PIN_15,GPIO_PIN_SET);

	HAL_GPIO_WritePin(GPIOB,GPIO_PIN_12,GPIO_PIN_RESET);
		HAL_GPIO_WritePin(GPIOB,GPIO_PIN_14,GPIO_PIN_SET);
	printDebug("Backward");
//	okResponse();
	clearReceivedBuffer();
}

void stopMovement()
{
	printDebug("Stop Car");
	// stop left
	HAL_GPIO_WritePin(GPIOB,GPIO_PIN_13,GPIO_PIN_RESET);
	HAL_GPIO_WritePin(GPIOB,GPIO_PIN_15,GPIO_PIN_RESET);
	// stop right
	HAL_GPIO_WritePin(GPIOB,GPIO_PIN_12,GPIO_PIN_RESET);
	HAL_GPIO_WritePin(GPIOB,GPIO_PIN_14,GPIO_PIN_RESET);
//	okResponse();
	clearReceivedBuffer();
}




void moveBackwardLeft()
{
	printDebug("Backward Left");


//	// right motor backward
	HAL_GPIO_WritePin(GPIOB,GPIO_PIN_12,GPIO_PIN_RESET);
	HAL_GPIO_WritePin(GPIOB,GPIO_PIN_14,GPIO_PIN_SET);

//	okResponse();
}

void moveBackwardRight()
{

	printDebug("Backward Right");
	// left motor backward
	HAL_GPIO_WritePin(GPIOB,GPIO_PIN_13,GPIO_PIN_RESET);
	HAL_GPIO_WritePin(GPIOB,GPIO_PIN_15,GPIO_PIN_SET);

//	okResponse();
}

void moveForwardRight()
{
//	__HAL_UART_DISABLE_IT(&huart3, UART_IT_RXNE);
	printDebug("Forward Right");
//	okResponse();
//
}

void moveForwardLeft()
{
//	__HAL_UART_DISABLE_IT(&huart3, UART_IT_RXNE);
	printDebug("Forward Left");
//	okResponse();

//
}
