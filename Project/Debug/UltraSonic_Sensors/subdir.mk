################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (10.3-2021.10)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../UltraSonic_Sensors/HC_SR04.c 

OBJS += \
./UltraSonic_Sensors/HC_SR04.o 

C_DEPS += \
./UltraSonic_Sensors/HC_SR04.d 


# Each subdirectory must supply rules for building sources it contributes
UltraSonic_Sensors/%.o UltraSonic_Sensors/%.su: ../UltraSonic_Sensors/%.c UltraSonic_Sensors/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m3 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F103xE -c -I../Core/Inc -I../Drivers/STM32F1xx_HAL_Driver/Inc -I../Drivers/STM32F1xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F1xx/Include -I../Drivers/CMSIS/Include -I"/home/jamesyoung/Documents/School/ELEC3300-Project/Project/LCD" -I"/home/jamesyoung/Documents/School/ELEC3300-Project/Project/ESP_Driver" -O1 -ffunction-sections -fdata-sections -Wall -fdata-sections -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"

clean: clean-UltraSonic_Sensors

clean-UltraSonic_Sensors:
	-$(RM) ./UltraSonic_Sensors/HC_SR04.d ./UltraSonic_Sensors/HC_SR04.o ./UltraSonic_Sensors/HC_SR04.su

.PHONY: clean-UltraSonic_Sensors

