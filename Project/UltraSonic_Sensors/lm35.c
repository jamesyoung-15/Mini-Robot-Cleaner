#include "lm35.h"

//// Get data from LM35
float getTemperatureData()
{
	uint32_t adcvalue=0;
	float temp = 0;
	HAL_ADC_Start(&hadc1);
	if (HAL_ADC_PollForConversion(&hadc1,10) == HAL_OK)
	{
		adcvalue = HAL_ADC_GetValue(&hadc1);
//		temp = (adcvalue*3.3*100)/4095;
		temp = (adcvalue*3*100)/4095;
	}
//	HAL_ADC_Stop(&hadc1);
	return temp;
}
