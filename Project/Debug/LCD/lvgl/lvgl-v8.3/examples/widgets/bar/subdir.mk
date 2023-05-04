################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (10.3-2021.10)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../LCD/lvgl/lvgl-v8.3/examples/widgets/bar/lv_example_bar_1.c \
../LCD/lvgl/lvgl-v8.3/examples/widgets/bar/lv_example_bar_2.c \
../LCD/lvgl/lvgl-v8.3/examples/widgets/bar/lv_example_bar_3.c \
../LCD/lvgl/lvgl-v8.3/examples/widgets/bar/lv_example_bar_4.c \
../LCD/lvgl/lvgl-v8.3/examples/widgets/bar/lv_example_bar_5.c \
../LCD/lvgl/lvgl-v8.3/examples/widgets/bar/lv_example_bar_6.c 

OBJS += \
./LCD/lvgl/lvgl-v8.3/examples/widgets/bar/lv_example_bar_1.o \
./LCD/lvgl/lvgl-v8.3/examples/widgets/bar/lv_example_bar_2.o \
./LCD/lvgl/lvgl-v8.3/examples/widgets/bar/lv_example_bar_3.o \
./LCD/lvgl/lvgl-v8.3/examples/widgets/bar/lv_example_bar_4.o \
./LCD/lvgl/lvgl-v8.3/examples/widgets/bar/lv_example_bar_5.o \
./LCD/lvgl/lvgl-v8.3/examples/widgets/bar/lv_example_bar_6.o 

C_DEPS += \
./LCD/lvgl/lvgl-v8.3/examples/widgets/bar/lv_example_bar_1.d \
./LCD/lvgl/lvgl-v8.3/examples/widgets/bar/lv_example_bar_2.d \
./LCD/lvgl/lvgl-v8.3/examples/widgets/bar/lv_example_bar_3.d \
./LCD/lvgl/lvgl-v8.3/examples/widgets/bar/lv_example_bar_4.d \
./LCD/lvgl/lvgl-v8.3/examples/widgets/bar/lv_example_bar_5.d \
./LCD/lvgl/lvgl-v8.3/examples/widgets/bar/lv_example_bar_6.d 


# Each subdirectory must supply rules for building sources it contributes
LCD/lvgl/lvgl-v8.3/examples/widgets/bar/%.o LCD/lvgl/lvgl-v8.3/examples/widgets/bar/%.su LCD/lvgl/lvgl-v8.3/examples/widgets/bar/%.cyclo: ../LCD/lvgl/lvgl-v8.3/examples/widgets/bar/%.c LCD/lvgl/lvgl-v8.3/examples/widgets/bar/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m3 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F103xE -c -I../Core/Inc -I../Drivers/STM32F1xx_HAL_Driver/Inc -I../Drivers/STM32F1xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F1xx/Include -I../Drivers/CMSIS/Include -I"/home/jamesyoung/Documents/School/ELEC3300-Project/Project/LCD" -I"/home/jamesyoung/Documents/School/ELEC3300-Project/Project/ESP_Driver" -I"/home/jamesyoung/Documents/School/ELEC3300-Project/Project/Motor_Control" -O1 -ffunction-sections -fdata-sections -Wall -fdata-sections -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"

clean: clean-LCD-2f-lvgl-2f-lvgl-2d-v8-2e-3-2f-examples-2f-widgets-2f-bar

clean-LCD-2f-lvgl-2f-lvgl-2d-v8-2e-3-2f-examples-2f-widgets-2f-bar:
	-$(RM) ./LCD/lvgl/lvgl-v8.3/examples/widgets/bar/lv_example_bar_1.cyclo ./LCD/lvgl/lvgl-v8.3/examples/widgets/bar/lv_example_bar_1.d ./LCD/lvgl/lvgl-v8.3/examples/widgets/bar/lv_example_bar_1.o ./LCD/lvgl/lvgl-v8.3/examples/widgets/bar/lv_example_bar_1.su ./LCD/lvgl/lvgl-v8.3/examples/widgets/bar/lv_example_bar_2.cyclo ./LCD/lvgl/lvgl-v8.3/examples/widgets/bar/lv_example_bar_2.d ./LCD/lvgl/lvgl-v8.3/examples/widgets/bar/lv_example_bar_2.o ./LCD/lvgl/lvgl-v8.3/examples/widgets/bar/lv_example_bar_2.su ./LCD/lvgl/lvgl-v8.3/examples/widgets/bar/lv_example_bar_3.cyclo ./LCD/lvgl/lvgl-v8.3/examples/widgets/bar/lv_example_bar_3.d ./LCD/lvgl/lvgl-v8.3/examples/widgets/bar/lv_example_bar_3.o ./LCD/lvgl/lvgl-v8.3/examples/widgets/bar/lv_example_bar_3.su ./LCD/lvgl/lvgl-v8.3/examples/widgets/bar/lv_example_bar_4.cyclo ./LCD/lvgl/lvgl-v8.3/examples/widgets/bar/lv_example_bar_4.d ./LCD/lvgl/lvgl-v8.3/examples/widgets/bar/lv_example_bar_4.o ./LCD/lvgl/lvgl-v8.3/examples/widgets/bar/lv_example_bar_4.su ./LCD/lvgl/lvgl-v8.3/examples/widgets/bar/lv_example_bar_5.cyclo ./LCD/lvgl/lvgl-v8.3/examples/widgets/bar/lv_example_bar_5.d ./LCD/lvgl/lvgl-v8.3/examples/widgets/bar/lv_example_bar_5.o ./LCD/lvgl/lvgl-v8.3/examples/widgets/bar/lv_example_bar_5.su ./LCD/lvgl/lvgl-v8.3/examples/widgets/bar/lv_example_bar_6.cyclo ./LCD/lvgl/lvgl-v8.3/examples/widgets/bar/lv_example_bar_6.d ./LCD/lvgl/lvgl-v8.3/examples/widgets/bar/lv_example_bar_6.o ./LCD/lvgl/lvgl-v8.3/examples/widgets/bar/lv_example_bar_6.su

.PHONY: clean-LCD-2f-lvgl-2f-lvgl-2d-v8-2e-3-2f-examples-2f-widgets-2f-bar

