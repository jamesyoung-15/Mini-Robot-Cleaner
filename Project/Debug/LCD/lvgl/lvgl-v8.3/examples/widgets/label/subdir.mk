################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (10.3-2021.10)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../LCD/lvgl/lvgl-v8.3/examples/widgets/label/lv_example_label_1.c \
../LCD/lvgl/lvgl-v8.3/examples/widgets/label/lv_example_label_2.c \
../LCD/lvgl/lvgl-v8.3/examples/widgets/label/lv_example_label_3.c \
../LCD/lvgl/lvgl-v8.3/examples/widgets/label/lv_example_label_4.c \
../LCD/lvgl/lvgl-v8.3/examples/widgets/label/lv_example_label_5.c 

OBJS += \
./LCD/lvgl/lvgl-v8.3/examples/widgets/label/lv_example_label_1.o \
./LCD/lvgl/lvgl-v8.3/examples/widgets/label/lv_example_label_2.o \
./LCD/lvgl/lvgl-v8.3/examples/widgets/label/lv_example_label_3.o \
./LCD/lvgl/lvgl-v8.3/examples/widgets/label/lv_example_label_4.o \
./LCD/lvgl/lvgl-v8.3/examples/widgets/label/lv_example_label_5.o 

C_DEPS += \
./LCD/lvgl/lvgl-v8.3/examples/widgets/label/lv_example_label_1.d \
./LCD/lvgl/lvgl-v8.3/examples/widgets/label/lv_example_label_2.d \
./LCD/lvgl/lvgl-v8.3/examples/widgets/label/lv_example_label_3.d \
./LCD/lvgl/lvgl-v8.3/examples/widgets/label/lv_example_label_4.d \
./LCD/lvgl/lvgl-v8.3/examples/widgets/label/lv_example_label_5.d 


# Each subdirectory must supply rules for building sources it contributes
LCD/lvgl/lvgl-v8.3/examples/widgets/label/%.o LCD/lvgl/lvgl-v8.3/examples/widgets/label/%.su LCD/lvgl/lvgl-v8.3/examples/widgets/label/%.cyclo: ../LCD/lvgl/lvgl-v8.3/examples/widgets/label/%.c LCD/lvgl/lvgl-v8.3/examples/widgets/label/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m3 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F103xE -c -I../Core/Inc -I../Drivers/STM32F1xx_HAL_Driver/Inc -I../Drivers/STM32F1xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F1xx/Include -I../Drivers/CMSIS/Include -I"/home/jamesyoung/Documents/School/ELEC3300-Project/Project/LCD" -I"/home/jamesyoung/Documents/School/ELEC3300-Project/Project/ESP_Driver" -I"/home/jamesyoung/Documents/School/ELEC3300-Project/Project/Motor_Control" -O1 -ffunction-sections -fdata-sections -Wall -fdata-sections -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"

clean: clean-LCD-2f-lvgl-2f-lvgl-2d-v8-2e-3-2f-examples-2f-widgets-2f-label

clean-LCD-2f-lvgl-2f-lvgl-2d-v8-2e-3-2f-examples-2f-widgets-2f-label:
	-$(RM) ./LCD/lvgl/lvgl-v8.3/examples/widgets/label/lv_example_label_1.cyclo ./LCD/lvgl/lvgl-v8.3/examples/widgets/label/lv_example_label_1.d ./LCD/lvgl/lvgl-v8.3/examples/widgets/label/lv_example_label_1.o ./LCD/lvgl/lvgl-v8.3/examples/widgets/label/lv_example_label_1.su ./LCD/lvgl/lvgl-v8.3/examples/widgets/label/lv_example_label_2.cyclo ./LCD/lvgl/lvgl-v8.3/examples/widgets/label/lv_example_label_2.d ./LCD/lvgl/lvgl-v8.3/examples/widgets/label/lv_example_label_2.o ./LCD/lvgl/lvgl-v8.3/examples/widgets/label/lv_example_label_2.su ./LCD/lvgl/lvgl-v8.3/examples/widgets/label/lv_example_label_3.cyclo ./LCD/lvgl/lvgl-v8.3/examples/widgets/label/lv_example_label_3.d ./LCD/lvgl/lvgl-v8.3/examples/widgets/label/lv_example_label_3.o ./LCD/lvgl/lvgl-v8.3/examples/widgets/label/lv_example_label_3.su ./LCD/lvgl/lvgl-v8.3/examples/widgets/label/lv_example_label_4.cyclo ./LCD/lvgl/lvgl-v8.3/examples/widgets/label/lv_example_label_4.d ./LCD/lvgl/lvgl-v8.3/examples/widgets/label/lv_example_label_4.o ./LCD/lvgl/lvgl-v8.3/examples/widgets/label/lv_example_label_4.su ./LCD/lvgl/lvgl-v8.3/examples/widgets/label/lv_example_label_5.cyclo ./LCD/lvgl/lvgl-v8.3/examples/widgets/label/lv_example_label_5.d ./LCD/lvgl/lvgl-v8.3/examples/widgets/label/lv_example_label_5.o ./LCD/lvgl/lvgl-v8.3/examples/widgets/label/lv_example_label_5.su

.PHONY: clean-LCD-2f-lvgl-2f-lvgl-2d-v8-2e-3-2f-examples-2f-widgets-2f-label

