################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (10.3-2021.10)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../ESP_Driver/base64.c \
../ESP_Driver/esp.c \
../ESP_Driver/sha1.c \
../ESP_Driver/websocket_key.c 

OBJS += \
./ESP_Driver/base64.o \
./ESP_Driver/esp.o \
./ESP_Driver/sha1.o \
./ESP_Driver/websocket_key.o 

C_DEPS += \
./ESP_Driver/base64.d \
./ESP_Driver/esp.d \
./ESP_Driver/sha1.d \
./ESP_Driver/websocket_key.d 


# Each subdirectory must supply rules for building sources it contributes
ESP_Driver/%.o ESP_Driver/%.su: ../ESP_Driver/%.c ESP_Driver/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m3 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F103xE -c -I../Core/Inc -I../Drivers/STM32F1xx_HAL_Driver/Inc -I../Drivers/STM32F1xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F1xx/Include -I../Drivers/CMSIS/Include -I"/home/jamesyoung/Documents/School/ELEC3300-Project/Project/LCD" -I"/home/jamesyoung/Documents/School/ELEC3300-Project/Project/ESP_Driver" -O1 -ffunction-sections -fdata-sections -Wall -fdata-sections -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"

clean: clean-ESP_Driver

clean-ESP_Driver:
	-$(RM) ./ESP_Driver/base64.d ./ESP_Driver/base64.o ./ESP_Driver/base64.su ./ESP_Driver/esp.d ./ESP_Driver/esp.o ./ESP_Driver/esp.su ./ESP_Driver/sha1.d ./ESP_Driver/sha1.o ./ESP_Driver/sha1.su ./ESP_Driver/websocket_key.d ./ESP_Driver/websocket_key.o ./ESP_Driver/websocket_key.su

.PHONY: clean-ESP_Driver

