################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (10.3-2021.10)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../LCD/lvgl/lvgl-v8.3/src/extra/widgets/win/lv_win.c 

OBJS += \
./LCD/lvgl/lvgl-v8.3/src/extra/widgets/win/lv_win.o 

C_DEPS += \
./LCD/lvgl/lvgl-v8.3/src/extra/widgets/win/lv_win.d 


# Each subdirectory must supply rules for building sources it contributes
LCD/lvgl/lvgl-v8.3/src/extra/widgets/win/%.o LCD/lvgl/lvgl-v8.3/src/extra/widgets/win/%.su LCD/lvgl/lvgl-v8.3/src/extra/widgets/win/%.cyclo: ../LCD/lvgl/lvgl-v8.3/src/extra/widgets/win/%.c LCD/lvgl/lvgl-v8.3/src/extra/widgets/win/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m3 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F103xE -c -I../Core/Inc -I../Drivers/STM32F1xx_HAL_Driver/Inc -I../Drivers/STM32F1xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F1xx/Include -I../Drivers/CMSIS/Include -I"/home/jamesyoung/Documents/School/ELEC3300-Project/Project/LCD" -I"/home/jamesyoung/Documents/School/ELEC3300-Project/Project/ESP_Driver" -I"/home/jamesyoung/Documents/School/ELEC3300-Project/Project/Motor_Control" -O1 -ffunction-sections -fdata-sections -Wall -fdata-sections -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"

clean: clean-LCD-2f-lvgl-2f-lvgl-2d-v8-2e-3-2f-src-2f-extra-2f-widgets-2f-win

clean-LCD-2f-lvgl-2f-lvgl-2d-v8-2e-3-2f-src-2f-extra-2f-widgets-2f-win:
	-$(RM) ./LCD/lvgl/lvgl-v8.3/src/extra/widgets/win/lv_win.cyclo ./LCD/lvgl/lvgl-v8.3/src/extra/widgets/win/lv_win.d ./LCD/lvgl/lvgl-v8.3/src/extra/widgets/win/lv_win.o ./LCD/lvgl/lvgl-v8.3/src/extra/widgets/win/lv_win.su

.PHONY: clean-LCD-2f-lvgl-2f-lvgl-2d-v8-2e-3-2f-src-2f-extra-2f-widgets-2f-win

