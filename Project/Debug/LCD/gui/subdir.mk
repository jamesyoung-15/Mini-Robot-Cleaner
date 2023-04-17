################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (10.3-2021.10)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../LCD/gui/debug.c \
../LCD/gui/menu.c 

OBJS += \
./LCD/gui/debug.o \
./LCD/gui/menu.o 

C_DEPS += \
./LCD/gui/debug.d \
./LCD/gui/menu.d 


# Each subdirectory must supply rules for building sources it contributes
LCD/gui/%.o LCD/gui/%.su: ../LCD/gui/%.c LCD/gui/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m3 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F103xE -c -I../Core/Inc -I../Drivers/STM32F1xx_HAL_Driver/Inc -I../Drivers/STM32F1xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F1xx/Include -I../Drivers/CMSIS/Include -I"/home/jamesyoung/Documents/School/ELEC3300-Project/Project/LCD" -I"/home/jamesyoung/Documents/School/ELEC3300-Project/Project/ESP_Driver" -O1 -ffunction-sections -fdata-sections -Wall -fdata-sections -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"

clean: clean-LCD-2f-gui

clean-LCD-2f-gui:
	-$(RM) ./LCD/gui/debug.d ./LCD/gui/debug.o ./LCD/gui/debug.su ./LCD/gui/menu.d ./LCD/gui/menu.o ./LCD/gui/menu.su

.PHONY: clean-LCD-2f-gui

