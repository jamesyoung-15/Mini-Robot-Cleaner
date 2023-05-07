################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (10.3-2021.10)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../LCD/lcd_core/fonts.c \
../LCD/lcd_core/ili9341.c \
../LCD/lcd_core/xpt2046.c 

OBJS += \
./LCD/lcd_core/fonts.o \
./LCD/lcd_core/ili9341.o \
./LCD/lcd_core/xpt2046.o 

C_DEPS += \
./LCD/lcd_core/fonts.d \
./LCD/lcd_core/ili9341.d \
./LCD/lcd_core/xpt2046.d 


# Each subdirectory must supply rules for building sources it contributes
LCD/lcd_core/%.o LCD/lcd_core/%.su: ../LCD/lcd_core/%.c LCD/lcd_core/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m3 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F103xE -c -I../Core/Inc -I../Drivers/STM32F1xx_HAL_Driver/Inc -I../Drivers/STM32F1xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F1xx/Include -I../Drivers/CMSIS/Include -I"/home/jamesyoung/Documents/School/ELEC3300-Project/Project/LCD" -I"/home/jamesyoung/Documents/School/ELEC3300-Project/Project/ESP_Driver" -I"/home/jamesyoung/Documents/School/ELEC3300-Project/Project/Motor_Control" -O1 -ffunction-sections -fdata-sections -Wall -fdata-sections -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"

clean: clean-LCD-2f-lcd_core

clean-LCD-2f-lcd_core:
	-$(RM) ./LCD/lcd_core/fonts.d ./LCD/lcd_core/fonts.o ./LCD/lcd_core/fonts.su ./LCD/lcd_core/ili9341.d ./LCD/lcd_core/ili9341.o ./LCD/lcd_core/ili9341.su ./LCD/lcd_core/xpt2046.d ./LCD/lcd_core/xpt2046.o ./LCD/lcd_core/xpt2046.su

.PHONY: clean-LCD-2f-lcd_core

