################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (10.3-2021.10)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../LCD/lvgl/lvgl-v8.3/examples/widgets/roller/lv_example_roller_1.c \
../LCD/lvgl/lvgl-v8.3/examples/widgets/roller/lv_example_roller_2.c \
../LCD/lvgl/lvgl-v8.3/examples/widgets/roller/lv_example_roller_3.c 

OBJS += \
./LCD/lvgl/lvgl-v8.3/examples/widgets/roller/lv_example_roller_1.o \
./LCD/lvgl/lvgl-v8.3/examples/widgets/roller/lv_example_roller_2.o \
./LCD/lvgl/lvgl-v8.3/examples/widgets/roller/lv_example_roller_3.o 

C_DEPS += \
./LCD/lvgl/lvgl-v8.3/examples/widgets/roller/lv_example_roller_1.d \
./LCD/lvgl/lvgl-v8.3/examples/widgets/roller/lv_example_roller_2.d \
./LCD/lvgl/lvgl-v8.3/examples/widgets/roller/lv_example_roller_3.d 


# Each subdirectory must supply rules for building sources it contributes
LCD/lvgl/lvgl-v8.3/examples/widgets/roller/%.o LCD/lvgl/lvgl-v8.3/examples/widgets/roller/%.su LCD/lvgl/lvgl-v8.3/examples/widgets/roller/%.cyclo: ../LCD/lvgl/lvgl-v8.3/examples/widgets/roller/%.c LCD/lvgl/lvgl-v8.3/examples/widgets/roller/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m3 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F103xE -c -I../Core/Inc -I../Drivers/STM32F1xx_HAL_Driver/Inc -I../Drivers/STM32F1xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F1xx/Include -I../Drivers/CMSIS/Include -I"/home/jamesyoung/Documents/School/ELEC3300-Project/Project/LCD" -I"/home/jamesyoung/Documents/School/ELEC3300-Project/Project/ESP_Driver" -O1 -ffunction-sections -fdata-sections -Wall -fdata-sections -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"

clean: clean-LCD-2f-lvgl-2f-lvgl-2d-v8-2e-3-2f-examples-2f-widgets-2f-roller

clean-LCD-2f-lvgl-2f-lvgl-2d-v8-2e-3-2f-examples-2f-widgets-2f-roller:
	-$(RM) ./LCD/lvgl/lvgl-v8.3/examples/widgets/roller/lv_example_roller_1.cyclo ./LCD/lvgl/lvgl-v8.3/examples/widgets/roller/lv_example_roller_1.d ./LCD/lvgl/lvgl-v8.3/examples/widgets/roller/lv_example_roller_1.o ./LCD/lvgl/lvgl-v8.3/examples/widgets/roller/lv_example_roller_1.su ./LCD/lvgl/lvgl-v8.3/examples/widgets/roller/lv_example_roller_2.cyclo ./LCD/lvgl/lvgl-v8.3/examples/widgets/roller/lv_example_roller_2.d ./LCD/lvgl/lvgl-v8.3/examples/widgets/roller/lv_example_roller_2.o ./LCD/lvgl/lvgl-v8.3/examples/widgets/roller/lv_example_roller_2.su ./LCD/lvgl/lvgl-v8.3/examples/widgets/roller/lv_example_roller_3.cyclo ./LCD/lvgl/lvgl-v8.3/examples/widgets/roller/lv_example_roller_3.d ./LCD/lvgl/lvgl-v8.3/examples/widgets/roller/lv_example_roller_3.o ./LCD/lvgl/lvgl-v8.3/examples/widgets/roller/lv_example_roller_3.su

.PHONY: clean-LCD-2f-lvgl-2f-lvgl-2d-v8-2e-3-2f-examples-2f-widgets-2f-roller

