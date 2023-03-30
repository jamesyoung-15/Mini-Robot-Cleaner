################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (10.3-2021.10)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../LCD/lvgl/lvgl-v8.3/src/hal/lv_hal_disp.c \
../LCD/lvgl/lvgl-v8.3/src/hal/lv_hal_indev.c \
../LCD/lvgl/lvgl-v8.3/src/hal/lv_hal_tick.c 

OBJS += \
./LCD/lvgl/lvgl-v8.3/src/hal/lv_hal_disp.o \
./LCD/lvgl/lvgl-v8.3/src/hal/lv_hal_indev.o \
./LCD/lvgl/lvgl-v8.3/src/hal/lv_hal_tick.o 

C_DEPS += \
./LCD/lvgl/lvgl-v8.3/src/hal/lv_hal_disp.d \
./LCD/lvgl/lvgl-v8.3/src/hal/lv_hal_indev.d \
./LCD/lvgl/lvgl-v8.3/src/hal/lv_hal_tick.d 


# Each subdirectory must supply rules for building sources it contributes
LCD/lvgl/lvgl-v8.3/src/hal/%.o LCD/lvgl/lvgl-v8.3/src/hal/%.su: ../LCD/lvgl/lvgl-v8.3/src/hal/%.c LCD/lvgl/lvgl-v8.3/src/hal/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m3 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F103xE -c -I../Core/Inc -I../Drivers/STM32F1xx_HAL_Driver/Inc -I../Drivers/STM32F1xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F1xx/Include -I../Drivers/CMSIS/Include -I"/home/jamesyoung/Documents/School/ELEC3300-Project/Project/LCD" -O1 -ffunction-sections -fdata-sections -Wall -fdata-sections -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"

clean: clean-LCD-2f-lvgl-2f-lvgl-2d-v8-2e-3-2f-src-2f-hal

clean-LCD-2f-lvgl-2f-lvgl-2d-v8-2e-3-2f-src-2f-hal:
	-$(RM) ./LCD/lvgl/lvgl-v8.3/src/hal/lv_hal_disp.d ./LCD/lvgl/lvgl-v8.3/src/hal/lv_hal_disp.o ./LCD/lvgl/lvgl-v8.3/src/hal/lv_hal_disp.su ./LCD/lvgl/lvgl-v8.3/src/hal/lv_hal_indev.d ./LCD/lvgl/lvgl-v8.3/src/hal/lv_hal_indev.o ./LCD/lvgl/lvgl-v8.3/src/hal/lv_hal_indev.su ./LCD/lvgl/lvgl-v8.3/src/hal/lv_hal_tick.d ./LCD/lvgl/lvgl-v8.3/src/hal/lv_hal_tick.o ./LCD/lvgl/lvgl-v8.3/src/hal/lv_hal_tick.su

.PHONY: clean-LCD-2f-lvgl-2f-lvgl-2d-v8-2e-3-2f-src-2f-hal

