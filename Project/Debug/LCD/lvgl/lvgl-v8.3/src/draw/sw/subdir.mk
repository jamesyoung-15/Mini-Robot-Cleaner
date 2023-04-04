################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (10.3-2021.10)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../LCD/lvgl/lvgl-v8.3/src/draw/sw/lv_draw_sw.c \
../LCD/lvgl/lvgl-v8.3/src/draw/sw/lv_draw_sw_arc.c \
../LCD/lvgl/lvgl-v8.3/src/draw/sw/lv_draw_sw_blend.c \
../LCD/lvgl/lvgl-v8.3/src/draw/sw/lv_draw_sw_dither.c \
../LCD/lvgl/lvgl-v8.3/src/draw/sw/lv_draw_sw_gradient.c \
../LCD/lvgl/lvgl-v8.3/src/draw/sw/lv_draw_sw_img.c \
../LCD/lvgl/lvgl-v8.3/src/draw/sw/lv_draw_sw_layer.c \
../LCD/lvgl/lvgl-v8.3/src/draw/sw/lv_draw_sw_letter.c \
../LCD/lvgl/lvgl-v8.3/src/draw/sw/lv_draw_sw_line.c \
../LCD/lvgl/lvgl-v8.3/src/draw/sw/lv_draw_sw_polygon.c \
../LCD/lvgl/lvgl-v8.3/src/draw/sw/lv_draw_sw_rect.c \
../LCD/lvgl/lvgl-v8.3/src/draw/sw/lv_draw_sw_transform.c 

OBJS += \
./LCD/lvgl/lvgl-v8.3/src/draw/sw/lv_draw_sw.o \
./LCD/lvgl/lvgl-v8.3/src/draw/sw/lv_draw_sw_arc.o \
./LCD/lvgl/lvgl-v8.3/src/draw/sw/lv_draw_sw_blend.o \
./LCD/lvgl/lvgl-v8.3/src/draw/sw/lv_draw_sw_dither.o \
./LCD/lvgl/lvgl-v8.3/src/draw/sw/lv_draw_sw_gradient.o \
./LCD/lvgl/lvgl-v8.3/src/draw/sw/lv_draw_sw_img.o \
./LCD/lvgl/lvgl-v8.3/src/draw/sw/lv_draw_sw_layer.o \
./LCD/lvgl/lvgl-v8.3/src/draw/sw/lv_draw_sw_letter.o \
./LCD/lvgl/lvgl-v8.3/src/draw/sw/lv_draw_sw_line.o \
./LCD/lvgl/lvgl-v8.3/src/draw/sw/lv_draw_sw_polygon.o \
./LCD/lvgl/lvgl-v8.3/src/draw/sw/lv_draw_sw_rect.o \
./LCD/lvgl/lvgl-v8.3/src/draw/sw/lv_draw_sw_transform.o 

C_DEPS += \
./LCD/lvgl/lvgl-v8.3/src/draw/sw/lv_draw_sw.d \
./LCD/lvgl/lvgl-v8.3/src/draw/sw/lv_draw_sw_arc.d \
./LCD/lvgl/lvgl-v8.3/src/draw/sw/lv_draw_sw_blend.d \
./LCD/lvgl/lvgl-v8.3/src/draw/sw/lv_draw_sw_dither.d \
./LCD/lvgl/lvgl-v8.3/src/draw/sw/lv_draw_sw_gradient.d \
./LCD/lvgl/lvgl-v8.3/src/draw/sw/lv_draw_sw_img.d \
./LCD/lvgl/lvgl-v8.3/src/draw/sw/lv_draw_sw_layer.d \
./LCD/lvgl/lvgl-v8.3/src/draw/sw/lv_draw_sw_letter.d \
./LCD/lvgl/lvgl-v8.3/src/draw/sw/lv_draw_sw_line.d \
./LCD/lvgl/lvgl-v8.3/src/draw/sw/lv_draw_sw_polygon.d \
./LCD/lvgl/lvgl-v8.3/src/draw/sw/lv_draw_sw_rect.d \
./LCD/lvgl/lvgl-v8.3/src/draw/sw/lv_draw_sw_transform.d 


# Each subdirectory must supply rules for building sources it contributes
LCD/lvgl/lvgl-v8.3/src/draw/sw/%.o LCD/lvgl/lvgl-v8.3/src/draw/sw/%.su: ../LCD/lvgl/lvgl-v8.3/src/draw/sw/%.c LCD/lvgl/lvgl-v8.3/src/draw/sw/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m3 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F103xE -c -I../Core/Inc -I../Drivers/STM32F1xx_HAL_Driver/Inc -I../Drivers/STM32F1xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F1xx/Include -I../Drivers/CMSIS/Include -I"/home/jamesyoung/Documents/School/ELEC3300-Project/Project/LCD" -I"/home/jamesyoung/Documents/School/ELEC3300-Project/Project/ESP_Driver" -O1 -ffunction-sections -fdata-sections -Wall -fdata-sections -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"

clean: clean-LCD-2f-lvgl-2f-lvgl-2d-v8-2e-3-2f-src-2f-draw-2f-sw

clean-LCD-2f-lvgl-2f-lvgl-2d-v8-2e-3-2f-src-2f-draw-2f-sw:
	-$(RM) ./LCD/lvgl/lvgl-v8.3/src/draw/sw/lv_draw_sw.d ./LCD/lvgl/lvgl-v8.3/src/draw/sw/lv_draw_sw.o ./LCD/lvgl/lvgl-v8.3/src/draw/sw/lv_draw_sw.su ./LCD/lvgl/lvgl-v8.3/src/draw/sw/lv_draw_sw_arc.d ./LCD/lvgl/lvgl-v8.3/src/draw/sw/lv_draw_sw_arc.o ./LCD/lvgl/lvgl-v8.3/src/draw/sw/lv_draw_sw_arc.su ./LCD/lvgl/lvgl-v8.3/src/draw/sw/lv_draw_sw_blend.d ./LCD/lvgl/lvgl-v8.3/src/draw/sw/lv_draw_sw_blend.o ./LCD/lvgl/lvgl-v8.3/src/draw/sw/lv_draw_sw_blend.su ./LCD/lvgl/lvgl-v8.3/src/draw/sw/lv_draw_sw_dither.d ./LCD/lvgl/lvgl-v8.3/src/draw/sw/lv_draw_sw_dither.o ./LCD/lvgl/lvgl-v8.3/src/draw/sw/lv_draw_sw_dither.su ./LCD/lvgl/lvgl-v8.3/src/draw/sw/lv_draw_sw_gradient.d ./LCD/lvgl/lvgl-v8.3/src/draw/sw/lv_draw_sw_gradient.o ./LCD/lvgl/lvgl-v8.3/src/draw/sw/lv_draw_sw_gradient.su ./LCD/lvgl/lvgl-v8.3/src/draw/sw/lv_draw_sw_img.d ./LCD/lvgl/lvgl-v8.3/src/draw/sw/lv_draw_sw_img.o ./LCD/lvgl/lvgl-v8.3/src/draw/sw/lv_draw_sw_img.su ./LCD/lvgl/lvgl-v8.3/src/draw/sw/lv_draw_sw_layer.d ./LCD/lvgl/lvgl-v8.3/src/draw/sw/lv_draw_sw_layer.o ./LCD/lvgl/lvgl-v8.3/src/draw/sw/lv_draw_sw_layer.su ./LCD/lvgl/lvgl-v8.3/src/draw/sw/lv_draw_sw_letter.d ./LCD/lvgl/lvgl-v8.3/src/draw/sw/lv_draw_sw_letter.o ./LCD/lvgl/lvgl-v8.3/src/draw/sw/lv_draw_sw_letter.su ./LCD/lvgl/lvgl-v8.3/src/draw/sw/lv_draw_sw_line.d ./LCD/lvgl/lvgl-v8.3/src/draw/sw/lv_draw_sw_line.o ./LCD/lvgl/lvgl-v8.3/src/draw/sw/lv_draw_sw_line.su ./LCD/lvgl/lvgl-v8.3/src/draw/sw/lv_draw_sw_polygon.d ./LCD/lvgl/lvgl-v8.3/src/draw/sw/lv_draw_sw_polygon.o ./LCD/lvgl/lvgl-v8.3/src/draw/sw/lv_draw_sw_polygon.su ./LCD/lvgl/lvgl-v8.3/src/draw/sw/lv_draw_sw_rect.d ./LCD/lvgl/lvgl-v8.3/src/draw/sw/lv_draw_sw_rect.o ./LCD/lvgl/lvgl-v8.3/src/draw/sw/lv_draw_sw_rect.su ./LCD/lvgl/lvgl-v8.3/src/draw/sw/lv_draw_sw_transform.d ./LCD/lvgl/lvgl-v8.3/src/draw/sw/lv_draw_sw_transform.o ./LCD/lvgl/lvgl-v8.3/src/draw/sw/lv_draw_sw_transform.su

.PHONY: clean-LCD-2f-lvgl-2f-lvgl-2d-v8-2e-3-2f-src-2f-draw-2f-sw

