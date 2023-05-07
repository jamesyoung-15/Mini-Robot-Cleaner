################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (10.3-2021.10)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../LCD/lvgl/lvgl-v8.3/tests/src/lv_test_indev.c \
../LCD/lvgl/lvgl-v8.3/tests/src/lv_test_init.c 

OBJS += \
./LCD/lvgl/lvgl-v8.3/tests/src/lv_test_indev.o \
./LCD/lvgl/lvgl-v8.3/tests/src/lv_test_init.o 

C_DEPS += \
./LCD/lvgl/lvgl-v8.3/tests/src/lv_test_indev.d \
./LCD/lvgl/lvgl-v8.3/tests/src/lv_test_init.d 


# Each subdirectory must supply rules for building sources it contributes
LCD/lvgl/lvgl-v8.3/tests/src/%.o LCD/lvgl/lvgl-v8.3/tests/src/%.su LCD/lvgl/lvgl-v8.3/tests/src/%.cyclo: ../LCD/lvgl/lvgl-v8.3/tests/src/%.c LCD/lvgl/lvgl-v8.3/tests/src/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m3 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F103xE -c -I../Core/Inc -I../Drivers/STM32F1xx_HAL_Driver/Inc -I../Drivers/STM32F1xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F1xx/Include -I../Drivers/CMSIS/Include -I"/home/jamesyoung/Documents/School/ELEC3300-Project/Project/LCD" -I"/home/jamesyoung/Documents/School/ELEC3300-Project/Project/ESP_Driver" -I"/home/jamesyoung/Documents/School/ELEC3300-Project/Project/Motor_Control" -I"/home/jamesyoung/Documents/School/ELEC3300-Project/Project/UltraSonic_Sensors" -O1 -ffunction-sections -fdata-sections -Wall -fdata-sections -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"

clean: clean-LCD-2f-lvgl-2f-lvgl-2d-v8-2e-3-2f-tests-2f-src

clean-LCD-2f-lvgl-2f-lvgl-2d-v8-2e-3-2f-tests-2f-src:
	-$(RM) ./LCD/lvgl/lvgl-v8.3/tests/src/lv_test_indev.cyclo ./LCD/lvgl/lvgl-v8.3/tests/src/lv_test_indev.d ./LCD/lvgl/lvgl-v8.3/tests/src/lv_test_indev.o ./LCD/lvgl/lvgl-v8.3/tests/src/lv_test_indev.su ./LCD/lvgl/lvgl-v8.3/tests/src/lv_test_init.cyclo ./LCD/lvgl/lvgl-v8.3/tests/src/lv_test_init.d ./LCD/lvgl/lvgl-v8.3/tests/src/lv_test_init.o ./LCD/lvgl/lvgl-v8.3/tests/src/lv_test_init.su

.PHONY: clean-LCD-2f-lvgl-2f-lvgl-2d-v8-2e-3-2f-tests-2f-src

