################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (10.3-2021.10)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../LCD/lvgl/lvgl-v8.3/src/draw/lv_draw.c \
../LCD/lvgl/lvgl-v8.3/src/draw/lv_draw_arc.c \
../LCD/lvgl/lvgl-v8.3/src/draw/lv_draw_img.c \
../LCD/lvgl/lvgl-v8.3/src/draw/lv_draw_label.c \
../LCD/lvgl/lvgl-v8.3/src/draw/lv_draw_layer.c \
../LCD/lvgl/lvgl-v8.3/src/draw/lv_draw_line.c \
../LCD/lvgl/lvgl-v8.3/src/draw/lv_draw_mask.c \
../LCD/lvgl/lvgl-v8.3/src/draw/lv_draw_rect.c \
../LCD/lvgl/lvgl-v8.3/src/draw/lv_draw_transform.c \
../LCD/lvgl/lvgl-v8.3/src/draw/lv_draw_triangle.c \
../LCD/lvgl/lvgl-v8.3/src/draw/lv_img_buf.c \
../LCD/lvgl/lvgl-v8.3/src/draw/lv_img_cache.c \
../LCD/lvgl/lvgl-v8.3/src/draw/lv_img_decoder.c 

OBJS += \
./LCD/lvgl/lvgl-v8.3/src/draw/lv_draw.o \
./LCD/lvgl/lvgl-v8.3/src/draw/lv_draw_arc.o \
./LCD/lvgl/lvgl-v8.3/src/draw/lv_draw_img.o \
./LCD/lvgl/lvgl-v8.3/src/draw/lv_draw_label.o \
./LCD/lvgl/lvgl-v8.3/src/draw/lv_draw_layer.o \
./LCD/lvgl/lvgl-v8.3/src/draw/lv_draw_line.o \
./LCD/lvgl/lvgl-v8.3/src/draw/lv_draw_mask.o \
./LCD/lvgl/lvgl-v8.3/src/draw/lv_draw_rect.o \
./LCD/lvgl/lvgl-v8.3/src/draw/lv_draw_transform.o \
./LCD/lvgl/lvgl-v8.3/src/draw/lv_draw_triangle.o \
./LCD/lvgl/lvgl-v8.3/src/draw/lv_img_buf.o \
./LCD/lvgl/lvgl-v8.3/src/draw/lv_img_cache.o \
./LCD/lvgl/lvgl-v8.3/src/draw/lv_img_decoder.o 

C_DEPS += \
./LCD/lvgl/lvgl-v8.3/src/draw/lv_draw.d \
./LCD/lvgl/lvgl-v8.3/src/draw/lv_draw_arc.d \
./LCD/lvgl/lvgl-v8.3/src/draw/lv_draw_img.d \
./LCD/lvgl/lvgl-v8.3/src/draw/lv_draw_label.d \
./LCD/lvgl/lvgl-v8.3/src/draw/lv_draw_layer.d \
./LCD/lvgl/lvgl-v8.3/src/draw/lv_draw_line.d \
./LCD/lvgl/lvgl-v8.3/src/draw/lv_draw_mask.d \
./LCD/lvgl/lvgl-v8.3/src/draw/lv_draw_rect.d \
./LCD/lvgl/lvgl-v8.3/src/draw/lv_draw_transform.d \
./LCD/lvgl/lvgl-v8.3/src/draw/lv_draw_triangle.d \
./LCD/lvgl/lvgl-v8.3/src/draw/lv_img_buf.d \
./LCD/lvgl/lvgl-v8.3/src/draw/lv_img_cache.d \
./LCD/lvgl/lvgl-v8.3/src/draw/lv_img_decoder.d 


# Each subdirectory must supply rules for building sources it contributes
LCD/lvgl/lvgl-v8.3/src/draw/%.o LCD/lvgl/lvgl-v8.3/src/draw/%.su LCD/lvgl/lvgl-v8.3/src/draw/%.cyclo: ../LCD/lvgl/lvgl-v8.3/src/draw/%.c LCD/lvgl/lvgl-v8.3/src/draw/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m3 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F103xE -c -I../Core/Inc -I../Drivers/STM32F1xx_HAL_Driver/Inc -I../Drivers/STM32F1xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F1xx/Include -I../Drivers/CMSIS/Include -I"/home/jamesyoung/Documents/School/ELEC3300-Project/Project/LCD" -I"/home/jamesyoung/Documents/School/ELEC3300-Project/Project/ESP_Driver" -I"/home/jamesyoung/Documents/School/ELEC3300-Project/Project/Motor_Control" -I"/home/jamesyoung/Documents/School/ELEC3300-Project/Project/UltraSonic_Sensors" -O1 -ffunction-sections -fdata-sections -Wall -fdata-sections -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"

clean: clean-LCD-2f-lvgl-2f-lvgl-2d-v8-2e-3-2f-src-2f-draw

clean-LCD-2f-lvgl-2f-lvgl-2d-v8-2e-3-2f-src-2f-draw:
	-$(RM) ./LCD/lvgl/lvgl-v8.3/src/draw/lv_draw.cyclo ./LCD/lvgl/lvgl-v8.3/src/draw/lv_draw.d ./LCD/lvgl/lvgl-v8.3/src/draw/lv_draw.o ./LCD/lvgl/lvgl-v8.3/src/draw/lv_draw.su ./LCD/lvgl/lvgl-v8.3/src/draw/lv_draw_arc.cyclo ./LCD/lvgl/lvgl-v8.3/src/draw/lv_draw_arc.d ./LCD/lvgl/lvgl-v8.3/src/draw/lv_draw_arc.o ./LCD/lvgl/lvgl-v8.3/src/draw/lv_draw_arc.su ./LCD/lvgl/lvgl-v8.3/src/draw/lv_draw_img.cyclo ./LCD/lvgl/lvgl-v8.3/src/draw/lv_draw_img.d ./LCD/lvgl/lvgl-v8.3/src/draw/lv_draw_img.o ./LCD/lvgl/lvgl-v8.3/src/draw/lv_draw_img.su ./LCD/lvgl/lvgl-v8.3/src/draw/lv_draw_label.cyclo ./LCD/lvgl/lvgl-v8.3/src/draw/lv_draw_label.d ./LCD/lvgl/lvgl-v8.3/src/draw/lv_draw_label.o ./LCD/lvgl/lvgl-v8.3/src/draw/lv_draw_label.su ./LCD/lvgl/lvgl-v8.3/src/draw/lv_draw_layer.cyclo ./LCD/lvgl/lvgl-v8.3/src/draw/lv_draw_layer.d ./LCD/lvgl/lvgl-v8.3/src/draw/lv_draw_layer.o ./LCD/lvgl/lvgl-v8.3/src/draw/lv_draw_layer.su ./LCD/lvgl/lvgl-v8.3/src/draw/lv_draw_line.cyclo ./LCD/lvgl/lvgl-v8.3/src/draw/lv_draw_line.d ./LCD/lvgl/lvgl-v8.3/src/draw/lv_draw_line.o ./LCD/lvgl/lvgl-v8.3/src/draw/lv_draw_line.su ./LCD/lvgl/lvgl-v8.3/src/draw/lv_draw_mask.cyclo ./LCD/lvgl/lvgl-v8.3/src/draw/lv_draw_mask.d ./LCD/lvgl/lvgl-v8.3/src/draw/lv_draw_mask.o ./LCD/lvgl/lvgl-v8.3/src/draw/lv_draw_mask.su ./LCD/lvgl/lvgl-v8.3/src/draw/lv_draw_rect.cyclo ./LCD/lvgl/lvgl-v8.3/src/draw/lv_draw_rect.d ./LCD/lvgl/lvgl-v8.3/src/draw/lv_draw_rect.o ./LCD/lvgl/lvgl-v8.3/src/draw/lv_draw_rect.su ./LCD/lvgl/lvgl-v8.3/src/draw/lv_draw_transform.cyclo ./LCD/lvgl/lvgl-v8.3/src/draw/lv_draw_transform.d ./LCD/lvgl/lvgl-v8.3/src/draw/lv_draw_transform.o ./LCD/lvgl/lvgl-v8.3/src/draw/lv_draw_transform.su ./LCD/lvgl/lvgl-v8.3/src/draw/lv_draw_triangle.cyclo ./LCD/lvgl/lvgl-v8.3/src/draw/lv_draw_triangle.d ./LCD/lvgl/lvgl-v8.3/src/draw/lv_draw_triangle.o ./LCD/lvgl/lvgl-v8.3/src/draw/lv_draw_triangle.su ./LCD/lvgl/lvgl-v8.3/src/draw/lv_img_buf.cyclo ./LCD/lvgl/lvgl-v8.3/src/draw/lv_img_buf.d ./LCD/lvgl/lvgl-v8.3/src/draw/lv_img_buf.o ./LCD/lvgl/lvgl-v8.3/src/draw/lv_img_buf.su ./LCD/lvgl/lvgl-v8.3/src/draw/lv_img_cache.cyclo ./LCD/lvgl/lvgl-v8.3/src/draw/lv_img_cache.d ./LCD/lvgl/lvgl-v8.3/src/draw/lv_img_cache.o ./LCD/lvgl/lvgl-v8.3/src/draw/lv_img_cache.su ./LCD/lvgl/lvgl-v8.3/src/draw/lv_img_decoder.cyclo ./LCD/lvgl/lvgl-v8.3/src/draw/lv_img_decoder.d ./LCD/lvgl/lvgl-v8.3/src/draw/lv_img_decoder.o ./LCD/lvgl/lvgl-v8.3/src/draw/lv_img_decoder.su

.PHONY: clean-LCD-2f-lvgl-2f-lvgl-2d-v8-2e-3-2f-src-2f-draw

