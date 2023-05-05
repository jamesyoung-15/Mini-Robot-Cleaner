################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (10.3-2021.10)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Motor_Control/car_movement.c \
../Motor_Control/cleaning_motor.c 

OBJS += \
./Motor_Control/car_movement.o \
./Motor_Control/cleaning_motor.o 

C_DEPS += \
./Motor_Control/car_movement.d \
./Motor_Control/cleaning_motor.d 


# Each subdirectory must supply rules for building sources it contributes
Motor_Control/%.o Motor_Control/%.su Motor_Control/%.cyclo: ../Motor_Control/%.c Motor_Control/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m3 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F103xE -c -I../Core/Inc -I../Drivers/STM32F1xx_HAL_Driver/Inc -I../Drivers/STM32F1xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F1xx/Include -I../Drivers/CMSIS/Include -I"/home/jamesyoung/Documents/School/ELEC3300-Project/Project/LCD" -I"/home/jamesyoung/Documents/School/ELEC3300-Project/Project/ESP_Driver" -I"/home/jamesyoung/Documents/School/ELEC3300-Project/Project/Motor_Control" -O1 -ffunction-sections -fdata-sections -Wall -fdata-sections -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"

clean: clean-Motor_Control

clean-Motor_Control:
	-$(RM) ./Motor_Control/car_movement.cyclo ./Motor_Control/car_movement.d ./Motor_Control/car_movement.o ./Motor_Control/car_movement.su ./Motor_Control/cleaning_motor.cyclo ./Motor_Control/cleaning_motor.d ./Motor_Control/cleaning_motor.o ./Motor_Control/cleaning_motor.su

.PHONY: clean-Motor_Control

