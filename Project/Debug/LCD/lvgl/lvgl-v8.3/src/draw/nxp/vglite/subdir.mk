################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (10.3-2021.10)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../LCD/lvgl/lvgl-v8.3/src/draw/nxp/vglite/lv_draw_vglite.c \
../LCD/lvgl/lvgl-v8.3/src/draw/nxp/vglite/lv_draw_vglite_arc.c \
../LCD/lvgl/lvgl-v8.3/src/draw/nxp/vglite/lv_draw_vglite_blend.c \
../LCD/lvgl/lvgl-v8.3/src/draw/nxp/vglite/lv_draw_vglite_line.c \
../LCD/lvgl/lvgl-v8.3/src/draw/nxp/vglite/lv_draw_vglite_rect.c \
../LCD/lvgl/lvgl-v8.3/src/draw/nxp/vglite/lv_vglite_buf.c \
../LCD/lvgl/lvgl-v8.3/src/draw/nxp/vglite/lv_vglite_utils.c 

OBJS += \
./LCD/lvgl/lvgl-v8.3/src/draw/nxp/vglite/lv_draw_vglite.o \
./LCD/lvgl/lvgl-v8.3/src/draw/nxp/vglite/lv_draw_vglite_arc.o \
./LCD/lvgl/lvgl-v8.3/src/draw/nxp/vglite/lv_draw_vglite_blend.o \
./LCD/lvgl/lvgl-v8.3/src/draw/nxp/vglite/lv_draw_vglite_line.o \
./LCD/lvgl/lvgl-v8.3/src/draw/nxp/vglite/lv_draw_vglite_rect.o \
./LCD/lvgl/lvgl-v8.3/src/draw/nxp/vglite/lv_vglite_buf.o \
./LCD/lvgl/lvgl-v8.3/src/draw/nxp/vglite/lv_vglite_utils.o 

C_DEPS += \
./LCD/lvgl/lvgl-v8.3/src/draw/nxp/vglite/lv_draw_vglite.d \
./LCD/lvgl/lvgl-v8.3/src/draw/nxp/vglite/lv_draw_vglite_arc.d \
./LCD/lvgl/lvgl-v8.3/src/draw/nxp/vglite/lv_draw_vglite_blend.d \
./LCD/lvgl/lvgl-v8.3/src/draw/nxp/vglite/lv_draw_vglite_line.d \
./LCD/lvgl/lvgl-v8.3/src/draw/nxp/vglite/lv_draw_vglite_rect.d \
./LCD/lvgl/lvgl-v8.3/src/draw/nxp/vglite/lv_vglite_buf.d \
./LCD/lvgl/lvgl-v8.3/src/draw/nxp/vglite/lv_vglite_utils.d 


# Each subdirectory must supply rules for building sources it contributes
LCD/lvgl/lvgl-v8.3/src/draw/nxp/vglite/%.o LCD/lvgl/lvgl-v8.3/src/draw/nxp/vglite/%.su: ../LCD/lvgl/lvgl-v8.3/src/draw/nxp/vglite/%.c LCD/lvgl/lvgl-v8.3/src/draw/nxp/vglite/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m3 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F103xE -c -I../Core/Inc -I../Drivers/STM32F1xx_HAL_Driver/Inc -I../Drivers/STM32F1xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F1xx/Include -I../Drivers/CMSIS/Include -I"/home/jamesyoung/Documents/School/ELEC3300-Project/Project/LCD" -I"/home/jamesyoung/Documents/School/ELEC3300-Project/Project/ESP_Driver" -O1 -ffunction-sections -fdata-sections -Wall -fdata-sections -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"

clean: clean-LCD-2f-lvgl-2f-lvgl-2d-v8-2e-3-2f-src-2f-draw-2f-nxp-2f-vglite

clean-LCD-2f-lvgl-2f-lvgl-2d-v8-2e-3-2f-src-2f-draw-2f-nxp-2f-vglite:
	-$(RM) ./LCD/lvgl/lvgl-v8.3/src/draw/nxp/vglite/lv_draw_vglite.d ./LCD/lvgl/lvgl-v8.3/src/draw/nxp/vglite/lv_draw_vglite.o ./LCD/lvgl/lvgl-v8.3/src/draw/nxp/vglite/lv_draw_vglite.su ./LCD/lvgl/lvgl-v8.3/src/draw/nxp/vglite/lv_draw_vglite_arc.d ./LCD/lvgl/lvgl-v8.3/src/draw/nxp/vglite/lv_draw_vglite_arc.o ./LCD/lvgl/lvgl-v8.3/src/draw/nxp/vglite/lv_draw_vglite_arc.su ./LCD/lvgl/lvgl-v8.3/src/draw/nxp/vglite/lv_draw_vglite_blend.d ./LCD/lvgl/lvgl-v8.3/src/draw/nxp/vglite/lv_draw_vglite_blend.o ./LCD/lvgl/lvgl-v8.3/src/draw/nxp/vglite/lv_draw_vglite_blend.su ./LCD/lvgl/lvgl-v8.3/src/draw/nxp/vglite/lv_draw_vglite_line.d ./LCD/lvgl/lvgl-v8.3/src/draw/nxp/vglite/lv_draw_vglite_line.o ./LCD/lvgl/lvgl-v8.3/src/draw/nxp/vglite/lv_draw_vglite_line.su ./LCD/lvgl/lvgl-v8.3/src/draw/nxp/vglite/lv_draw_vglite_rect.d ./LCD/lvgl/lvgl-v8.3/src/draw/nxp/vglite/lv_draw_vglite_rect.o ./LCD/lvgl/lvgl-v8.3/src/draw/nxp/vglite/lv_draw_vglite_rect.su ./LCD/lvgl/lvgl-v8.3/src/draw/nxp/vglite/lv_vglite_buf.d ./LCD/lvgl/lvgl-v8.3/src/draw/nxp/vglite/lv_vglite_buf.o ./LCD/lvgl/lvgl-v8.3/src/draw/nxp/vglite/lv_vglite_buf.su ./LCD/lvgl/lvgl-v8.3/src/draw/nxp/vglite/lv_vglite_utils.d ./LCD/lvgl/lvgl-v8.3/src/draw/nxp/vglite/lv_vglite_utils.o ./LCD/lvgl/lvgl-v8.3/src/draw/nxp/vglite/lv_vglite_utils.su

.PHONY: clean-LCD-2f-lvgl-2f-lvgl-2d-v8-2e-3-2f-src-2f-draw-2f-nxp-2f-vglite

