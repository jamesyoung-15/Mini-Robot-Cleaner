################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (10.3-2021.10)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../LCD/lvgl/lvgl-v8.3/examples/styles/lv_example_style_1.c \
../LCD/lvgl/lvgl-v8.3/examples/styles/lv_example_style_10.c \
../LCD/lvgl/lvgl-v8.3/examples/styles/lv_example_style_11.c \
../LCD/lvgl/lvgl-v8.3/examples/styles/lv_example_style_12.c \
../LCD/lvgl/lvgl-v8.3/examples/styles/lv_example_style_13.c \
../LCD/lvgl/lvgl-v8.3/examples/styles/lv_example_style_14.c \
../LCD/lvgl/lvgl-v8.3/examples/styles/lv_example_style_15.c \
../LCD/lvgl/lvgl-v8.3/examples/styles/lv_example_style_2.c \
../LCD/lvgl/lvgl-v8.3/examples/styles/lv_example_style_3.c \
../LCD/lvgl/lvgl-v8.3/examples/styles/lv_example_style_4.c \
../LCD/lvgl/lvgl-v8.3/examples/styles/lv_example_style_5.c \
../LCD/lvgl/lvgl-v8.3/examples/styles/lv_example_style_6.c \
../LCD/lvgl/lvgl-v8.3/examples/styles/lv_example_style_7.c \
../LCD/lvgl/lvgl-v8.3/examples/styles/lv_example_style_8.c \
../LCD/lvgl/lvgl-v8.3/examples/styles/lv_example_style_9.c 

OBJS += \
./LCD/lvgl/lvgl-v8.3/examples/styles/lv_example_style_1.o \
./LCD/lvgl/lvgl-v8.3/examples/styles/lv_example_style_10.o \
./LCD/lvgl/lvgl-v8.3/examples/styles/lv_example_style_11.o \
./LCD/lvgl/lvgl-v8.3/examples/styles/lv_example_style_12.o \
./LCD/lvgl/lvgl-v8.3/examples/styles/lv_example_style_13.o \
./LCD/lvgl/lvgl-v8.3/examples/styles/lv_example_style_14.o \
./LCD/lvgl/lvgl-v8.3/examples/styles/lv_example_style_15.o \
./LCD/lvgl/lvgl-v8.3/examples/styles/lv_example_style_2.o \
./LCD/lvgl/lvgl-v8.3/examples/styles/lv_example_style_3.o \
./LCD/lvgl/lvgl-v8.3/examples/styles/lv_example_style_4.o \
./LCD/lvgl/lvgl-v8.3/examples/styles/lv_example_style_5.o \
./LCD/lvgl/lvgl-v8.3/examples/styles/lv_example_style_6.o \
./LCD/lvgl/lvgl-v8.3/examples/styles/lv_example_style_7.o \
./LCD/lvgl/lvgl-v8.3/examples/styles/lv_example_style_8.o \
./LCD/lvgl/lvgl-v8.3/examples/styles/lv_example_style_9.o 

C_DEPS += \
./LCD/lvgl/lvgl-v8.3/examples/styles/lv_example_style_1.d \
./LCD/lvgl/lvgl-v8.3/examples/styles/lv_example_style_10.d \
./LCD/lvgl/lvgl-v8.3/examples/styles/lv_example_style_11.d \
./LCD/lvgl/lvgl-v8.3/examples/styles/lv_example_style_12.d \
./LCD/lvgl/lvgl-v8.3/examples/styles/lv_example_style_13.d \
./LCD/lvgl/lvgl-v8.3/examples/styles/lv_example_style_14.d \
./LCD/lvgl/lvgl-v8.3/examples/styles/lv_example_style_15.d \
./LCD/lvgl/lvgl-v8.3/examples/styles/lv_example_style_2.d \
./LCD/lvgl/lvgl-v8.3/examples/styles/lv_example_style_3.d \
./LCD/lvgl/lvgl-v8.3/examples/styles/lv_example_style_4.d \
./LCD/lvgl/lvgl-v8.3/examples/styles/lv_example_style_5.d \
./LCD/lvgl/lvgl-v8.3/examples/styles/lv_example_style_6.d \
./LCD/lvgl/lvgl-v8.3/examples/styles/lv_example_style_7.d \
./LCD/lvgl/lvgl-v8.3/examples/styles/lv_example_style_8.d \
./LCD/lvgl/lvgl-v8.3/examples/styles/lv_example_style_9.d 


# Each subdirectory must supply rules for building sources it contributes
LCD/lvgl/lvgl-v8.3/examples/styles/%.o LCD/lvgl/lvgl-v8.3/examples/styles/%.su LCD/lvgl/lvgl-v8.3/examples/styles/%.cyclo: ../LCD/lvgl/lvgl-v8.3/examples/styles/%.c LCD/lvgl/lvgl-v8.3/examples/styles/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m3 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F103xE -c -I../Core/Inc -I../Drivers/STM32F1xx_HAL_Driver/Inc -I../Drivers/STM32F1xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F1xx/Include -I../Drivers/CMSIS/Include -I"/home/jamesyoung/Documents/School/ELEC3300-Project/Project/LCD" -I"/home/jamesyoung/Documents/School/ELEC3300-Project/Project/ESP_Driver" -I"/home/jamesyoung/Documents/School/ELEC3300-Project/Project/Motor_Control" -I"/home/jamesyoung/Documents/School/ELEC3300-Project/Project/UltraSonic_Sensors" -O1 -ffunction-sections -fdata-sections -Wall -fdata-sections -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"

clean: clean-LCD-2f-lvgl-2f-lvgl-2d-v8-2e-3-2f-examples-2f-styles

clean-LCD-2f-lvgl-2f-lvgl-2d-v8-2e-3-2f-examples-2f-styles:
	-$(RM) ./LCD/lvgl/lvgl-v8.3/examples/styles/lv_example_style_1.cyclo ./LCD/lvgl/lvgl-v8.3/examples/styles/lv_example_style_1.d ./LCD/lvgl/lvgl-v8.3/examples/styles/lv_example_style_1.o ./LCD/lvgl/lvgl-v8.3/examples/styles/lv_example_style_1.su ./LCD/lvgl/lvgl-v8.3/examples/styles/lv_example_style_10.cyclo ./LCD/lvgl/lvgl-v8.3/examples/styles/lv_example_style_10.d ./LCD/lvgl/lvgl-v8.3/examples/styles/lv_example_style_10.o ./LCD/lvgl/lvgl-v8.3/examples/styles/lv_example_style_10.su ./LCD/lvgl/lvgl-v8.3/examples/styles/lv_example_style_11.cyclo ./LCD/lvgl/lvgl-v8.3/examples/styles/lv_example_style_11.d ./LCD/lvgl/lvgl-v8.3/examples/styles/lv_example_style_11.o ./LCD/lvgl/lvgl-v8.3/examples/styles/lv_example_style_11.su ./LCD/lvgl/lvgl-v8.3/examples/styles/lv_example_style_12.cyclo ./LCD/lvgl/lvgl-v8.3/examples/styles/lv_example_style_12.d ./LCD/lvgl/lvgl-v8.3/examples/styles/lv_example_style_12.o ./LCD/lvgl/lvgl-v8.3/examples/styles/lv_example_style_12.su ./LCD/lvgl/lvgl-v8.3/examples/styles/lv_example_style_13.cyclo ./LCD/lvgl/lvgl-v8.3/examples/styles/lv_example_style_13.d ./LCD/lvgl/lvgl-v8.3/examples/styles/lv_example_style_13.o ./LCD/lvgl/lvgl-v8.3/examples/styles/lv_example_style_13.su ./LCD/lvgl/lvgl-v8.3/examples/styles/lv_example_style_14.cyclo ./LCD/lvgl/lvgl-v8.3/examples/styles/lv_example_style_14.d ./LCD/lvgl/lvgl-v8.3/examples/styles/lv_example_style_14.o ./LCD/lvgl/lvgl-v8.3/examples/styles/lv_example_style_14.su ./LCD/lvgl/lvgl-v8.3/examples/styles/lv_example_style_15.cyclo ./LCD/lvgl/lvgl-v8.3/examples/styles/lv_example_style_15.d ./LCD/lvgl/lvgl-v8.3/examples/styles/lv_example_style_15.o ./LCD/lvgl/lvgl-v8.3/examples/styles/lv_example_style_15.su ./LCD/lvgl/lvgl-v8.3/examples/styles/lv_example_style_2.cyclo ./LCD/lvgl/lvgl-v8.3/examples/styles/lv_example_style_2.d ./LCD/lvgl/lvgl-v8.3/examples/styles/lv_example_style_2.o ./LCD/lvgl/lvgl-v8.3/examples/styles/lv_example_style_2.su ./LCD/lvgl/lvgl-v8.3/examples/styles/lv_example_style_3.cyclo ./LCD/lvgl/lvgl-v8.3/examples/styles/lv_example_style_3.d ./LCD/lvgl/lvgl-v8.3/examples/styles/lv_example_style_3.o ./LCD/lvgl/lvgl-v8.3/examples/styles/lv_example_style_3.su ./LCD/lvgl/lvgl-v8.3/examples/styles/lv_example_style_4.cyclo ./LCD/lvgl/lvgl-v8.3/examples/styles/lv_example_style_4.d ./LCD/lvgl/lvgl-v8.3/examples/styles/lv_example_style_4.o ./LCD/lvgl/lvgl-v8.3/examples/styles/lv_example_style_4.su ./LCD/lvgl/lvgl-v8.3/examples/styles/lv_example_style_5.cyclo ./LCD/lvgl/lvgl-v8.3/examples/styles/lv_example_style_5.d ./LCD/lvgl/lvgl-v8.3/examples/styles/lv_example_style_5.o ./LCD/lvgl/lvgl-v8.3/examples/styles/lv_example_style_5.su ./LCD/lvgl/lvgl-v8.3/examples/styles/lv_example_style_6.cyclo ./LCD/lvgl/lvgl-v8.3/examples/styles/lv_example_style_6.d ./LCD/lvgl/lvgl-v8.3/examples/styles/lv_example_style_6.o ./LCD/lvgl/lvgl-v8.3/examples/styles/lv_example_style_6.su ./LCD/lvgl/lvgl-v8.3/examples/styles/lv_example_style_7.cyclo ./LCD/lvgl/lvgl-v8.3/examples/styles/lv_example_style_7.d ./LCD/lvgl/lvgl-v8.3/examples/styles/lv_example_style_7.o ./LCD/lvgl/lvgl-v8.3/examples/styles/lv_example_style_7.su ./LCD/lvgl/lvgl-v8.3/examples/styles/lv_example_style_8.cyclo ./LCD/lvgl/lvgl-v8.3/examples/styles/lv_example_style_8.d ./LCD/lvgl/lvgl-v8.3/examples/styles/lv_example_style_8.o ./LCD/lvgl/lvgl-v8.3/examples/styles/lv_example_style_8.su ./LCD/lvgl/lvgl-v8.3/examples/styles/lv_example_style_9.cyclo ./LCD/lvgl/lvgl-v8.3/examples/styles/lv_example_style_9.d ./LCD/lvgl/lvgl-v8.3/examples/styles/lv_example_style_9.o ./LCD/lvgl/lvgl-v8.3/examples/styles/lv_example_style_9.su

.PHONY: clean-LCD-2f-lvgl-2f-lvgl-2d-v8-2e-3-2f-examples-2f-styles

