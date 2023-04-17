################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (10.3-2021.10)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../LCD/lvgl/lv_port_disp.c \
../LCD/lvgl/lv_port_indev.c 

OBJS += \
./LCD/lvgl/lv_port_disp.o \
./LCD/lvgl/lv_port_indev.o 

C_DEPS += \
./LCD/lvgl/lv_port_disp.d \
./LCD/lvgl/lv_port_indev.d 


# Each subdirectory must supply rules for building sources it contributes
LCD/lvgl/%.o LCD/lvgl/%.su LCD/lvgl/%.cyclo: ../LCD/lvgl/%.c LCD/lvgl/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m3 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F103xE -c -I../Core/Inc -I../Drivers/STM32F1xx_HAL_Driver/Inc -I../Drivers/STM32F1xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F1xx/Include -I../Drivers/CMSIS/Include -I"/home/jamesyoung/Documents/School/ELEC3300-Project/Project/LCD" -I"/home/jamesyoung/Documents/School/ELEC3300-Project/Project/ESP_Driver" -O1 -ffunction-sections -fdata-sections -Wall -fdata-sections -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"

clean: clean-LCD-2f-lvgl

clean-LCD-2f-lvgl:
	-$(RM) ./LCD/lvgl/lv_port_disp.cyclo ./LCD/lvgl/lv_port_disp.d ./LCD/lvgl/lv_port_disp.o ./LCD/lvgl/lv_port_disp.su ./LCD/lvgl/lv_port_indev.cyclo ./LCD/lvgl/lv_port_indev.d ./LCD/lvgl/lv_port_indev.o ./LCD/lvgl/lv_port_indev.su

.PHONY: clean-LCD-2f-lvgl

