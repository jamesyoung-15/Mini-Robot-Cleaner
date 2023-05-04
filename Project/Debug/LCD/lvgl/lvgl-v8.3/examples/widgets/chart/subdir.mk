################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (10.3-2021.10)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../LCD/lvgl/lvgl-v8.3/examples/widgets/chart/lv_example_chart_1.c \
../LCD/lvgl/lvgl-v8.3/examples/widgets/chart/lv_example_chart_2.c \
../LCD/lvgl/lvgl-v8.3/examples/widgets/chart/lv_example_chart_3.c \
../LCD/lvgl/lvgl-v8.3/examples/widgets/chart/lv_example_chart_4.c \
../LCD/lvgl/lvgl-v8.3/examples/widgets/chart/lv_example_chart_5.c \
../LCD/lvgl/lvgl-v8.3/examples/widgets/chart/lv_example_chart_6.c \
../LCD/lvgl/lvgl-v8.3/examples/widgets/chart/lv_example_chart_7.c \
../LCD/lvgl/lvgl-v8.3/examples/widgets/chart/lv_example_chart_8.c \
../LCD/lvgl/lvgl-v8.3/examples/widgets/chart/lv_example_chart_9.c 

OBJS += \
./LCD/lvgl/lvgl-v8.3/examples/widgets/chart/lv_example_chart_1.o \
./LCD/lvgl/lvgl-v8.3/examples/widgets/chart/lv_example_chart_2.o \
./LCD/lvgl/lvgl-v8.3/examples/widgets/chart/lv_example_chart_3.o \
./LCD/lvgl/lvgl-v8.3/examples/widgets/chart/lv_example_chart_4.o \
./LCD/lvgl/lvgl-v8.3/examples/widgets/chart/lv_example_chart_5.o \
./LCD/lvgl/lvgl-v8.3/examples/widgets/chart/lv_example_chart_6.o \
./LCD/lvgl/lvgl-v8.3/examples/widgets/chart/lv_example_chart_7.o \
./LCD/lvgl/lvgl-v8.3/examples/widgets/chart/lv_example_chart_8.o \
./LCD/lvgl/lvgl-v8.3/examples/widgets/chart/lv_example_chart_9.o 

C_DEPS += \
./LCD/lvgl/lvgl-v8.3/examples/widgets/chart/lv_example_chart_1.d \
./LCD/lvgl/lvgl-v8.3/examples/widgets/chart/lv_example_chart_2.d \
./LCD/lvgl/lvgl-v8.3/examples/widgets/chart/lv_example_chart_3.d \
./LCD/lvgl/lvgl-v8.3/examples/widgets/chart/lv_example_chart_4.d \
./LCD/lvgl/lvgl-v8.3/examples/widgets/chart/lv_example_chart_5.d \
./LCD/lvgl/lvgl-v8.3/examples/widgets/chart/lv_example_chart_6.d \
./LCD/lvgl/lvgl-v8.3/examples/widgets/chart/lv_example_chart_7.d \
./LCD/lvgl/lvgl-v8.3/examples/widgets/chart/lv_example_chart_8.d \
./LCD/lvgl/lvgl-v8.3/examples/widgets/chart/lv_example_chart_9.d 


# Each subdirectory must supply rules for building sources it contributes
LCD/lvgl/lvgl-v8.3/examples/widgets/chart/%.o LCD/lvgl/lvgl-v8.3/examples/widgets/chart/%.su LCD/lvgl/lvgl-v8.3/examples/widgets/chart/%.cyclo: ../LCD/lvgl/lvgl-v8.3/examples/widgets/chart/%.c LCD/lvgl/lvgl-v8.3/examples/widgets/chart/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m3 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F103xE -c -I../Core/Inc -I../Drivers/STM32F1xx_HAL_Driver/Inc -I../Drivers/STM32F1xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F1xx/Include -I../Drivers/CMSIS/Include -I"/home/jamesyoung/Documents/School/ELEC3300-Project/Project/LCD" -I"/home/jamesyoung/Documents/School/ELEC3300-Project/Project/ESP_Driver" -I"/home/jamesyoung/Documents/School/ELEC3300-Project/Project/Motor_Control" -O1 -ffunction-sections -fdata-sections -Wall -fdata-sections -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"

clean: clean-LCD-2f-lvgl-2f-lvgl-2d-v8-2e-3-2f-examples-2f-widgets-2f-chart

clean-LCD-2f-lvgl-2f-lvgl-2d-v8-2e-3-2f-examples-2f-widgets-2f-chart:
	-$(RM) ./LCD/lvgl/lvgl-v8.3/examples/widgets/chart/lv_example_chart_1.cyclo ./LCD/lvgl/lvgl-v8.3/examples/widgets/chart/lv_example_chart_1.d ./LCD/lvgl/lvgl-v8.3/examples/widgets/chart/lv_example_chart_1.o ./LCD/lvgl/lvgl-v8.3/examples/widgets/chart/lv_example_chart_1.su ./LCD/lvgl/lvgl-v8.3/examples/widgets/chart/lv_example_chart_2.cyclo ./LCD/lvgl/lvgl-v8.3/examples/widgets/chart/lv_example_chart_2.d ./LCD/lvgl/lvgl-v8.3/examples/widgets/chart/lv_example_chart_2.o ./LCD/lvgl/lvgl-v8.3/examples/widgets/chart/lv_example_chart_2.su ./LCD/lvgl/lvgl-v8.3/examples/widgets/chart/lv_example_chart_3.cyclo ./LCD/lvgl/lvgl-v8.3/examples/widgets/chart/lv_example_chart_3.d ./LCD/lvgl/lvgl-v8.3/examples/widgets/chart/lv_example_chart_3.o ./LCD/lvgl/lvgl-v8.3/examples/widgets/chart/lv_example_chart_3.su ./LCD/lvgl/lvgl-v8.3/examples/widgets/chart/lv_example_chart_4.cyclo ./LCD/lvgl/lvgl-v8.3/examples/widgets/chart/lv_example_chart_4.d ./LCD/lvgl/lvgl-v8.3/examples/widgets/chart/lv_example_chart_4.o ./LCD/lvgl/lvgl-v8.3/examples/widgets/chart/lv_example_chart_4.su ./LCD/lvgl/lvgl-v8.3/examples/widgets/chart/lv_example_chart_5.cyclo ./LCD/lvgl/lvgl-v8.3/examples/widgets/chart/lv_example_chart_5.d ./LCD/lvgl/lvgl-v8.3/examples/widgets/chart/lv_example_chart_5.o ./LCD/lvgl/lvgl-v8.3/examples/widgets/chart/lv_example_chart_5.su ./LCD/lvgl/lvgl-v8.3/examples/widgets/chart/lv_example_chart_6.cyclo ./LCD/lvgl/lvgl-v8.3/examples/widgets/chart/lv_example_chart_6.d ./LCD/lvgl/lvgl-v8.3/examples/widgets/chart/lv_example_chart_6.o ./LCD/lvgl/lvgl-v8.3/examples/widgets/chart/lv_example_chart_6.su ./LCD/lvgl/lvgl-v8.3/examples/widgets/chart/lv_example_chart_7.cyclo ./LCD/lvgl/lvgl-v8.3/examples/widgets/chart/lv_example_chart_7.d ./LCD/lvgl/lvgl-v8.3/examples/widgets/chart/lv_example_chart_7.o ./LCD/lvgl/lvgl-v8.3/examples/widgets/chart/lv_example_chart_7.su ./LCD/lvgl/lvgl-v8.3/examples/widgets/chart/lv_example_chart_8.cyclo ./LCD/lvgl/lvgl-v8.3/examples/widgets/chart/lv_example_chart_8.d ./LCD/lvgl/lvgl-v8.3/examples/widgets/chart/lv_example_chart_8.o ./LCD/lvgl/lvgl-v8.3/examples/widgets/chart/lv_example_chart_8.su ./LCD/lvgl/lvgl-v8.3/examples/widgets/chart/lv_example_chart_9.cyclo ./LCD/lvgl/lvgl-v8.3/examples/widgets/chart/lv_example_chart_9.d ./LCD/lvgl/lvgl-v8.3/examples/widgets/chart/lv_example_chart_9.o ./LCD/lvgl/lvgl-v8.3/examples/widgets/chart/lv_example_chart_9.su

.PHONY: clean-LCD-2f-lvgl-2f-lvgl-2d-v8-2e-3-2f-examples-2f-widgets-2f-chart

