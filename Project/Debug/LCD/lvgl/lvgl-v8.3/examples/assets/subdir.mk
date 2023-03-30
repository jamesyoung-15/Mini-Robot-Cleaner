################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (10.3-2021.10)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../LCD/lvgl/lvgl-v8.3/examples/assets/animimg001.c \
../LCD/lvgl/lvgl-v8.3/examples/assets/animimg002.c \
../LCD/lvgl/lvgl-v8.3/examples/assets/animimg003.c \
../LCD/lvgl/lvgl-v8.3/examples/assets/img_caret_down.c \
../LCD/lvgl/lvgl-v8.3/examples/assets/img_cogwheel_alpha16.c \
../LCD/lvgl/lvgl-v8.3/examples/assets/img_cogwheel_argb.c \
../LCD/lvgl/lvgl-v8.3/examples/assets/img_cogwheel_chroma_keyed.c \
../LCD/lvgl/lvgl-v8.3/examples/assets/img_cogwheel_indexed16.c \
../LCD/lvgl/lvgl-v8.3/examples/assets/img_cogwheel_rgb.c \
../LCD/lvgl/lvgl-v8.3/examples/assets/img_hand.c \
../LCD/lvgl/lvgl-v8.3/examples/assets/img_skew_strip.c \
../LCD/lvgl/lvgl-v8.3/examples/assets/img_star.c \
../LCD/lvgl/lvgl-v8.3/examples/assets/imgbtn_left.c \
../LCD/lvgl/lvgl-v8.3/examples/assets/imgbtn_mid.c \
../LCD/lvgl/lvgl-v8.3/examples/assets/imgbtn_right.c 

OBJS += \
./LCD/lvgl/lvgl-v8.3/examples/assets/animimg001.o \
./LCD/lvgl/lvgl-v8.3/examples/assets/animimg002.o \
./LCD/lvgl/lvgl-v8.3/examples/assets/animimg003.o \
./LCD/lvgl/lvgl-v8.3/examples/assets/img_caret_down.o \
./LCD/lvgl/lvgl-v8.3/examples/assets/img_cogwheel_alpha16.o \
./LCD/lvgl/lvgl-v8.3/examples/assets/img_cogwheel_argb.o \
./LCD/lvgl/lvgl-v8.3/examples/assets/img_cogwheel_chroma_keyed.o \
./LCD/lvgl/lvgl-v8.3/examples/assets/img_cogwheel_indexed16.o \
./LCD/lvgl/lvgl-v8.3/examples/assets/img_cogwheel_rgb.o \
./LCD/lvgl/lvgl-v8.3/examples/assets/img_hand.o \
./LCD/lvgl/lvgl-v8.3/examples/assets/img_skew_strip.o \
./LCD/lvgl/lvgl-v8.3/examples/assets/img_star.o \
./LCD/lvgl/lvgl-v8.3/examples/assets/imgbtn_left.o \
./LCD/lvgl/lvgl-v8.3/examples/assets/imgbtn_mid.o \
./LCD/lvgl/lvgl-v8.3/examples/assets/imgbtn_right.o 

C_DEPS += \
./LCD/lvgl/lvgl-v8.3/examples/assets/animimg001.d \
./LCD/lvgl/lvgl-v8.3/examples/assets/animimg002.d \
./LCD/lvgl/lvgl-v8.3/examples/assets/animimg003.d \
./LCD/lvgl/lvgl-v8.3/examples/assets/img_caret_down.d \
./LCD/lvgl/lvgl-v8.3/examples/assets/img_cogwheel_alpha16.d \
./LCD/lvgl/lvgl-v8.3/examples/assets/img_cogwheel_argb.d \
./LCD/lvgl/lvgl-v8.3/examples/assets/img_cogwheel_chroma_keyed.d \
./LCD/lvgl/lvgl-v8.3/examples/assets/img_cogwheel_indexed16.d \
./LCD/lvgl/lvgl-v8.3/examples/assets/img_cogwheel_rgb.d \
./LCD/lvgl/lvgl-v8.3/examples/assets/img_hand.d \
./LCD/lvgl/lvgl-v8.3/examples/assets/img_skew_strip.d \
./LCD/lvgl/lvgl-v8.3/examples/assets/img_star.d \
./LCD/lvgl/lvgl-v8.3/examples/assets/imgbtn_left.d \
./LCD/lvgl/lvgl-v8.3/examples/assets/imgbtn_mid.d \
./LCD/lvgl/lvgl-v8.3/examples/assets/imgbtn_right.d 


# Each subdirectory must supply rules for building sources it contributes
LCD/lvgl/lvgl-v8.3/examples/assets/%.o LCD/lvgl/lvgl-v8.3/examples/assets/%.su: ../LCD/lvgl/lvgl-v8.3/examples/assets/%.c LCD/lvgl/lvgl-v8.3/examples/assets/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m3 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F103xE -c -I../Core/Inc -I../Drivers/STM32F1xx_HAL_Driver/Inc -I../Drivers/STM32F1xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F1xx/Include -I../Drivers/CMSIS/Include -I"/home/jamesyoung/Documents/School/ELEC3300-Project/Project/LCD" -O1 -ffunction-sections -fdata-sections -Wall -fdata-sections -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"

clean: clean-LCD-2f-lvgl-2f-lvgl-2d-v8-2e-3-2f-examples-2f-assets

clean-LCD-2f-lvgl-2f-lvgl-2d-v8-2e-3-2f-examples-2f-assets:
	-$(RM) ./LCD/lvgl/lvgl-v8.3/examples/assets/animimg001.d ./LCD/lvgl/lvgl-v8.3/examples/assets/animimg001.o ./LCD/lvgl/lvgl-v8.3/examples/assets/animimg001.su ./LCD/lvgl/lvgl-v8.3/examples/assets/animimg002.d ./LCD/lvgl/lvgl-v8.3/examples/assets/animimg002.o ./LCD/lvgl/lvgl-v8.3/examples/assets/animimg002.su ./LCD/lvgl/lvgl-v8.3/examples/assets/animimg003.d ./LCD/lvgl/lvgl-v8.3/examples/assets/animimg003.o ./LCD/lvgl/lvgl-v8.3/examples/assets/animimg003.su ./LCD/lvgl/lvgl-v8.3/examples/assets/img_caret_down.d ./LCD/lvgl/lvgl-v8.3/examples/assets/img_caret_down.o ./LCD/lvgl/lvgl-v8.3/examples/assets/img_caret_down.su ./LCD/lvgl/lvgl-v8.3/examples/assets/img_cogwheel_alpha16.d ./LCD/lvgl/lvgl-v8.3/examples/assets/img_cogwheel_alpha16.o ./LCD/lvgl/lvgl-v8.3/examples/assets/img_cogwheel_alpha16.su ./LCD/lvgl/lvgl-v8.3/examples/assets/img_cogwheel_argb.d ./LCD/lvgl/lvgl-v8.3/examples/assets/img_cogwheel_argb.o ./LCD/lvgl/lvgl-v8.3/examples/assets/img_cogwheel_argb.su ./LCD/lvgl/lvgl-v8.3/examples/assets/img_cogwheel_chroma_keyed.d ./LCD/lvgl/lvgl-v8.3/examples/assets/img_cogwheel_chroma_keyed.o ./LCD/lvgl/lvgl-v8.3/examples/assets/img_cogwheel_chroma_keyed.su ./LCD/lvgl/lvgl-v8.3/examples/assets/img_cogwheel_indexed16.d ./LCD/lvgl/lvgl-v8.3/examples/assets/img_cogwheel_indexed16.o ./LCD/lvgl/lvgl-v8.3/examples/assets/img_cogwheel_indexed16.su ./LCD/lvgl/lvgl-v8.3/examples/assets/img_cogwheel_rgb.d ./LCD/lvgl/lvgl-v8.3/examples/assets/img_cogwheel_rgb.o ./LCD/lvgl/lvgl-v8.3/examples/assets/img_cogwheel_rgb.su ./LCD/lvgl/lvgl-v8.3/examples/assets/img_hand.d ./LCD/lvgl/lvgl-v8.3/examples/assets/img_hand.o ./LCD/lvgl/lvgl-v8.3/examples/assets/img_hand.su ./LCD/lvgl/lvgl-v8.3/examples/assets/img_skew_strip.d ./LCD/lvgl/lvgl-v8.3/examples/assets/img_skew_strip.o ./LCD/lvgl/lvgl-v8.3/examples/assets/img_skew_strip.su ./LCD/lvgl/lvgl-v8.3/examples/assets/img_star.d ./LCD/lvgl/lvgl-v8.3/examples/assets/img_star.o ./LCD/lvgl/lvgl-v8.3/examples/assets/img_star.su ./LCD/lvgl/lvgl-v8.3/examples/assets/imgbtn_left.d ./LCD/lvgl/lvgl-v8.3/examples/assets/imgbtn_left.o ./LCD/lvgl/lvgl-v8.3/examples/assets/imgbtn_left.su ./LCD/lvgl/lvgl-v8.3/examples/assets/imgbtn_mid.d ./LCD/lvgl/lvgl-v8.3/examples/assets/imgbtn_mid.o ./LCD/lvgl/lvgl-v8.3/examples/assets/imgbtn_mid.su ./LCD/lvgl/lvgl-v8.3/examples/assets/imgbtn_right.d ./LCD/lvgl/lvgl-v8.3/examples/assets/imgbtn_right.o ./LCD/lvgl/lvgl-v8.3/examples/assets/imgbtn_right.su

.PHONY: clean-LCD-2f-lvgl-2f-lvgl-2d-v8-2e-3-2f-examples-2f-assets

