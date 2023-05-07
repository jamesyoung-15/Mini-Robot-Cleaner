################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (10.3-2021.10)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../LCD/lvgl/lvgl-v8.3/src/draw/sdl/lv_draw_sdl.c \
../LCD/lvgl/lvgl-v8.3/src/draw/sdl/lv_draw_sdl_arc.c \
../LCD/lvgl/lvgl-v8.3/src/draw/sdl/lv_draw_sdl_bg.c \
../LCD/lvgl/lvgl-v8.3/src/draw/sdl/lv_draw_sdl_composite.c \
../LCD/lvgl/lvgl-v8.3/src/draw/sdl/lv_draw_sdl_img.c \
../LCD/lvgl/lvgl-v8.3/src/draw/sdl/lv_draw_sdl_label.c \
../LCD/lvgl/lvgl-v8.3/src/draw/sdl/lv_draw_sdl_layer.c \
../LCD/lvgl/lvgl-v8.3/src/draw/sdl/lv_draw_sdl_line.c \
../LCD/lvgl/lvgl-v8.3/src/draw/sdl/lv_draw_sdl_mask.c \
../LCD/lvgl/lvgl-v8.3/src/draw/sdl/lv_draw_sdl_polygon.c \
../LCD/lvgl/lvgl-v8.3/src/draw/sdl/lv_draw_sdl_rect.c \
../LCD/lvgl/lvgl-v8.3/src/draw/sdl/lv_draw_sdl_stack_blur.c \
../LCD/lvgl/lvgl-v8.3/src/draw/sdl/lv_draw_sdl_texture_cache.c \
../LCD/lvgl/lvgl-v8.3/src/draw/sdl/lv_draw_sdl_utils.c 

OBJS += \
./LCD/lvgl/lvgl-v8.3/src/draw/sdl/lv_draw_sdl.o \
./LCD/lvgl/lvgl-v8.3/src/draw/sdl/lv_draw_sdl_arc.o \
./LCD/lvgl/lvgl-v8.3/src/draw/sdl/lv_draw_sdl_bg.o \
./LCD/lvgl/lvgl-v8.3/src/draw/sdl/lv_draw_sdl_composite.o \
./LCD/lvgl/lvgl-v8.3/src/draw/sdl/lv_draw_sdl_img.o \
./LCD/lvgl/lvgl-v8.3/src/draw/sdl/lv_draw_sdl_label.o \
./LCD/lvgl/lvgl-v8.3/src/draw/sdl/lv_draw_sdl_layer.o \
./LCD/lvgl/lvgl-v8.3/src/draw/sdl/lv_draw_sdl_line.o \
./LCD/lvgl/lvgl-v8.3/src/draw/sdl/lv_draw_sdl_mask.o \
./LCD/lvgl/lvgl-v8.3/src/draw/sdl/lv_draw_sdl_polygon.o \
./LCD/lvgl/lvgl-v8.3/src/draw/sdl/lv_draw_sdl_rect.o \
./LCD/lvgl/lvgl-v8.3/src/draw/sdl/lv_draw_sdl_stack_blur.o \
./LCD/lvgl/lvgl-v8.3/src/draw/sdl/lv_draw_sdl_texture_cache.o \
./LCD/lvgl/lvgl-v8.3/src/draw/sdl/lv_draw_sdl_utils.o 

C_DEPS += \
./LCD/lvgl/lvgl-v8.3/src/draw/sdl/lv_draw_sdl.d \
./LCD/lvgl/lvgl-v8.3/src/draw/sdl/lv_draw_sdl_arc.d \
./LCD/lvgl/lvgl-v8.3/src/draw/sdl/lv_draw_sdl_bg.d \
./LCD/lvgl/lvgl-v8.3/src/draw/sdl/lv_draw_sdl_composite.d \
./LCD/lvgl/lvgl-v8.3/src/draw/sdl/lv_draw_sdl_img.d \
./LCD/lvgl/lvgl-v8.3/src/draw/sdl/lv_draw_sdl_label.d \
./LCD/lvgl/lvgl-v8.3/src/draw/sdl/lv_draw_sdl_layer.d \
./LCD/lvgl/lvgl-v8.3/src/draw/sdl/lv_draw_sdl_line.d \
./LCD/lvgl/lvgl-v8.3/src/draw/sdl/lv_draw_sdl_mask.d \
./LCD/lvgl/lvgl-v8.3/src/draw/sdl/lv_draw_sdl_polygon.d \
./LCD/lvgl/lvgl-v8.3/src/draw/sdl/lv_draw_sdl_rect.d \
./LCD/lvgl/lvgl-v8.3/src/draw/sdl/lv_draw_sdl_stack_blur.d \
./LCD/lvgl/lvgl-v8.3/src/draw/sdl/lv_draw_sdl_texture_cache.d \
./LCD/lvgl/lvgl-v8.3/src/draw/sdl/lv_draw_sdl_utils.d 


# Each subdirectory must supply rules for building sources it contributes
LCD/lvgl/lvgl-v8.3/src/draw/sdl/%.o LCD/lvgl/lvgl-v8.3/src/draw/sdl/%.su: ../LCD/lvgl/lvgl-v8.3/src/draw/sdl/%.c LCD/lvgl/lvgl-v8.3/src/draw/sdl/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m3 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F103xE -c -I../Core/Inc -I../Drivers/STM32F1xx_HAL_Driver/Inc -I../Drivers/STM32F1xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F1xx/Include -I../Drivers/CMSIS/Include -I"/home/jamesyoung/Documents/School/ELEC3300-Project/Project/LCD" -I"/home/jamesyoung/Documents/School/ELEC3300-Project/Project/ESP_Driver" -I"/home/jamesyoung/Documents/School/ELEC3300-Project/Project/Motor_Control" -O1 -ffunction-sections -fdata-sections -Wall -fdata-sections -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"

clean: clean-LCD-2f-lvgl-2f-lvgl-2d-v8-2e-3-2f-src-2f-draw-2f-sdl

clean-LCD-2f-lvgl-2f-lvgl-2d-v8-2e-3-2f-src-2f-draw-2f-sdl:
	-$(RM) ./LCD/lvgl/lvgl-v8.3/src/draw/sdl/lv_draw_sdl.d ./LCD/lvgl/lvgl-v8.3/src/draw/sdl/lv_draw_sdl.o ./LCD/lvgl/lvgl-v8.3/src/draw/sdl/lv_draw_sdl.su ./LCD/lvgl/lvgl-v8.3/src/draw/sdl/lv_draw_sdl_arc.d ./LCD/lvgl/lvgl-v8.3/src/draw/sdl/lv_draw_sdl_arc.o ./LCD/lvgl/lvgl-v8.3/src/draw/sdl/lv_draw_sdl_arc.su ./LCD/lvgl/lvgl-v8.3/src/draw/sdl/lv_draw_sdl_bg.d ./LCD/lvgl/lvgl-v8.3/src/draw/sdl/lv_draw_sdl_bg.o ./LCD/lvgl/lvgl-v8.3/src/draw/sdl/lv_draw_sdl_bg.su ./LCD/lvgl/lvgl-v8.3/src/draw/sdl/lv_draw_sdl_composite.d ./LCD/lvgl/lvgl-v8.3/src/draw/sdl/lv_draw_sdl_composite.o ./LCD/lvgl/lvgl-v8.3/src/draw/sdl/lv_draw_sdl_composite.su ./LCD/lvgl/lvgl-v8.3/src/draw/sdl/lv_draw_sdl_img.d ./LCD/lvgl/lvgl-v8.3/src/draw/sdl/lv_draw_sdl_img.o ./LCD/lvgl/lvgl-v8.3/src/draw/sdl/lv_draw_sdl_img.su ./LCD/lvgl/lvgl-v8.3/src/draw/sdl/lv_draw_sdl_label.d ./LCD/lvgl/lvgl-v8.3/src/draw/sdl/lv_draw_sdl_label.o ./LCD/lvgl/lvgl-v8.3/src/draw/sdl/lv_draw_sdl_label.su ./LCD/lvgl/lvgl-v8.3/src/draw/sdl/lv_draw_sdl_layer.d ./LCD/lvgl/lvgl-v8.3/src/draw/sdl/lv_draw_sdl_layer.o ./LCD/lvgl/lvgl-v8.3/src/draw/sdl/lv_draw_sdl_layer.su ./LCD/lvgl/lvgl-v8.3/src/draw/sdl/lv_draw_sdl_line.d ./LCD/lvgl/lvgl-v8.3/src/draw/sdl/lv_draw_sdl_line.o ./LCD/lvgl/lvgl-v8.3/src/draw/sdl/lv_draw_sdl_line.su ./LCD/lvgl/lvgl-v8.3/src/draw/sdl/lv_draw_sdl_mask.d ./LCD/lvgl/lvgl-v8.3/src/draw/sdl/lv_draw_sdl_mask.o ./LCD/lvgl/lvgl-v8.3/src/draw/sdl/lv_draw_sdl_mask.su ./LCD/lvgl/lvgl-v8.3/src/draw/sdl/lv_draw_sdl_polygon.d ./LCD/lvgl/lvgl-v8.3/src/draw/sdl/lv_draw_sdl_polygon.o ./LCD/lvgl/lvgl-v8.3/src/draw/sdl/lv_draw_sdl_polygon.su ./LCD/lvgl/lvgl-v8.3/src/draw/sdl/lv_draw_sdl_rect.d ./LCD/lvgl/lvgl-v8.3/src/draw/sdl/lv_draw_sdl_rect.o ./LCD/lvgl/lvgl-v8.3/src/draw/sdl/lv_draw_sdl_rect.su ./LCD/lvgl/lvgl-v8.3/src/draw/sdl/lv_draw_sdl_stack_blur.d ./LCD/lvgl/lvgl-v8.3/src/draw/sdl/lv_draw_sdl_stack_blur.o ./LCD/lvgl/lvgl-v8.3/src/draw/sdl/lv_draw_sdl_stack_blur.su ./LCD/lvgl/lvgl-v8.3/src/draw/sdl/lv_draw_sdl_texture_cache.d ./LCD/lvgl/lvgl-v8.3/src/draw/sdl/lv_draw_sdl_texture_cache.o ./LCD/lvgl/lvgl-v8.3/src/draw/sdl/lv_draw_sdl_texture_cache.su ./LCD/lvgl/lvgl-v8.3/src/draw/sdl/lv_draw_sdl_utils.d ./LCD/lvgl/lvgl-v8.3/src/draw/sdl/lv_draw_sdl_utils.o ./LCD/lvgl/lvgl-v8.3/src/draw/sdl/lv_draw_sdl_utils.su

.PHONY: clean-LCD-2f-lvgl-2f-lvgl-2d-v8-2e-3-2f-src-2f-draw-2f-sdl

