################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (10.3-2021.10)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../LCD/lvgl/lvgl-v8.3/src/core/lv_disp.c \
../LCD/lvgl/lvgl-v8.3/src/core/lv_event.c \
../LCD/lvgl/lvgl-v8.3/src/core/lv_group.c \
../LCD/lvgl/lvgl-v8.3/src/core/lv_indev.c \
../LCD/lvgl/lvgl-v8.3/src/core/lv_indev_scroll.c \
../LCD/lvgl/lvgl-v8.3/src/core/lv_obj.c \
../LCD/lvgl/lvgl-v8.3/src/core/lv_obj_class.c \
../LCD/lvgl/lvgl-v8.3/src/core/lv_obj_draw.c \
../LCD/lvgl/lvgl-v8.3/src/core/lv_obj_pos.c \
../LCD/lvgl/lvgl-v8.3/src/core/lv_obj_scroll.c \
../LCD/lvgl/lvgl-v8.3/src/core/lv_obj_style.c \
../LCD/lvgl/lvgl-v8.3/src/core/lv_obj_style_gen.c \
../LCD/lvgl/lvgl-v8.3/src/core/lv_obj_tree.c \
../LCD/lvgl/lvgl-v8.3/src/core/lv_refr.c \
../LCD/lvgl/lvgl-v8.3/src/core/lv_theme.c 

OBJS += \
./LCD/lvgl/lvgl-v8.3/src/core/lv_disp.o \
./LCD/lvgl/lvgl-v8.3/src/core/lv_event.o \
./LCD/lvgl/lvgl-v8.3/src/core/lv_group.o \
./LCD/lvgl/lvgl-v8.3/src/core/lv_indev.o \
./LCD/lvgl/lvgl-v8.3/src/core/lv_indev_scroll.o \
./LCD/lvgl/lvgl-v8.3/src/core/lv_obj.o \
./LCD/lvgl/lvgl-v8.3/src/core/lv_obj_class.o \
./LCD/lvgl/lvgl-v8.3/src/core/lv_obj_draw.o \
./LCD/lvgl/lvgl-v8.3/src/core/lv_obj_pos.o \
./LCD/lvgl/lvgl-v8.3/src/core/lv_obj_scroll.o \
./LCD/lvgl/lvgl-v8.3/src/core/lv_obj_style.o \
./LCD/lvgl/lvgl-v8.3/src/core/lv_obj_style_gen.o \
./LCD/lvgl/lvgl-v8.3/src/core/lv_obj_tree.o \
./LCD/lvgl/lvgl-v8.3/src/core/lv_refr.o \
./LCD/lvgl/lvgl-v8.3/src/core/lv_theme.o 

C_DEPS += \
./LCD/lvgl/lvgl-v8.3/src/core/lv_disp.d \
./LCD/lvgl/lvgl-v8.3/src/core/lv_event.d \
./LCD/lvgl/lvgl-v8.3/src/core/lv_group.d \
./LCD/lvgl/lvgl-v8.3/src/core/lv_indev.d \
./LCD/lvgl/lvgl-v8.3/src/core/lv_indev_scroll.d \
./LCD/lvgl/lvgl-v8.3/src/core/lv_obj.d \
./LCD/lvgl/lvgl-v8.3/src/core/lv_obj_class.d \
./LCD/lvgl/lvgl-v8.3/src/core/lv_obj_draw.d \
./LCD/lvgl/lvgl-v8.3/src/core/lv_obj_pos.d \
./LCD/lvgl/lvgl-v8.3/src/core/lv_obj_scroll.d \
./LCD/lvgl/lvgl-v8.3/src/core/lv_obj_style.d \
./LCD/lvgl/lvgl-v8.3/src/core/lv_obj_style_gen.d \
./LCD/lvgl/lvgl-v8.3/src/core/lv_obj_tree.d \
./LCD/lvgl/lvgl-v8.3/src/core/lv_refr.d \
./LCD/lvgl/lvgl-v8.3/src/core/lv_theme.d 


# Each subdirectory must supply rules for building sources it contributes
LCD/lvgl/lvgl-v8.3/src/core/%.o LCD/lvgl/lvgl-v8.3/src/core/%.su LCD/lvgl/lvgl-v8.3/src/core/%.cyclo: ../LCD/lvgl/lvgl-v8.3/src/core/%.c LCD/lvgl/lvgl-v8.3/src/core/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m3 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F103xE -c -I../Core/Inc -I../Drivers/STM32F1xx_HAL_Driver/Inc -I../Drivers/STM32F1xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F1xx/Include -I../Drivers/CMSIS/Include -I"/home/jamesyoung/Documents/School/ELEC3300-Project/Project/LCD" -I"/home/jamesyoung/Documents/School/ELEC3300-Project/Project/ESP_Driver" -I"/home/jamesyoung/Documents/School/ELEC3300-Project/Project/Motor_Control" -I"/home/jamesyoung/Documents/School/ELEC3300-Project/Project/UltraSonic_Sensors" -O1 -ffunction-sections -fdata-sections -Wall -fdata-sections -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"

clean: clean-LCD-2f-lvgl-2f-lvgl-2d-v8-2e-3-2f-src-2f-core

clean-LCD-2f-lvgl-2f-lvgl-2d-v8-2e-3-2f-src-2f-core:
	-$(RM) ./LCD/lvgl/lvgl-v8.3/src/core/lv_disp.cyclo ./LCD/lvgl/lvgl-v8.3/src/core/lv_disp.d ./LCD/lvgl/lvgl-v8.3/src/core/lv_disp.o ./LCD/lvgl/lvgl-v8.3/src/core/lv_disp.su ./LCD/lvgl/lvgl-v8.3/src/core/lv_event.cyclo ./LCD/lvgl/lvgl-v8.3/src/core/lv_event.d ./LCD/lvgl/lvgl-v8.3/src/core/lv_event.o ./LCD/lvgl/lvgl-v8.3/src/core/lv_event.su ./LCD/lvgl/lvgl-v8.3/src/core/lv_group.cyclo ./LCD/lvgl/lvgl-v8.3/src/core/lv_group.d ./LCD/lvgl/lvgl-v8.3/src/core/lv_group.o ./LCD/lvgl/lvgl-v8.3/src/core/lv_group.su ./LCD/lvgl/lvgl-v8.3/src/core/lv_indev.cyclo ./LCD/lvgl/lvgl-v8.3/src/core/lv_indev.d ./LCD/lvgl/lvgl-v8.3/src/core/lv_indev.o ./LCD/lvgl/lvgl-v8.3/src/core/lv_indev.su ./LCD/lvgl/lvgl-v8.3/src/core/lv_indev_scroll.cyclo ./LCD/lvgl/lvgl-v8.3/src/core/lv_indev_scroll.d ./LCD/lvgl/lvgl-v8.3/src/core/lv_indev_scroll.o ./LCD/lvgl/lvgl-v8.3/src/core/lv_indev_scroll.su ./LCD/lvgl/lvgl-v8.3/src/core/lv_obj.cyclo ./LCD/lvgl/lvgl-v8.3/src/core/lv_obj.d ./LCD/lvgl/lvgl-v8.3/src/core/lv_obj.o ./LCD/lvgl/lvgl-v8.3/src/core/lv_obj.su ./LCD/lvgl/lvgl-v8.3/src/core/lv_obj_class.cyclo ./LCD/lvgl/lvgl-v8.3/src/core/lv_obj_class.d ./LCD/lvgl/lvgl-v8.3/src/core/lv_obj_class.o ./LCD/lvgl/lvgl-v8.3/src/core/lv_obj_class.su ./LCD/lvgl/lvgl-v8.3/src/core/lv_obj_draw.cyclo ./LCD/lvgl/lvgl-v8.3/src/core/lv_obj_draw.d ./LCD/lvgl/lvgl-v8.3/src/core/lv_obj_draw.o ./LCD/lvgl/lvgl-v8.3/src/core/lv_obj_draw.su ./LCD/lvgl/lvgl-v8.3/src/core/lv_obj_pos.cyclo ./LCD/lvgl/lvgl-v8.3/src/core/lv_obj_pos.d ./LCD/lvgl/lvgl-v8.3/src/core/lv_obj_pos.o ./LCD/lvgl/lvgl-v8.3/src/core/lv_obj_pos.su ./LCD/lvgl/lvgl-v8.3/src/core/lv_obj_scroll.cyclo ./LCD/lvgl/lvgl-v8.3/src/core/lv_obj_scroll.d ./LCD/lvgl/lvgl-v8.3/src/core/lv_obj_scroll.o ./LCD/lvgl/lvgl-v8.3/src/core/lv_obj_scroll.su ./LCD/lvgl/lvgl-v8.3/src/core/lv_obj_style.cyclo ./LCD/lvgl/lvgl-v8.3/src/core/lv_obj_style.d ./LCD/lvgl/lvgl-v8.3/src/core/lv_obj_style.o ./LCD/lvgl/lvgl-v8.3/src/core/lv_obj_style.su ./LCD/lvgl/lvgl-v8.3/src/core/lv_obj_style_gen.cyclo ./LCD/lvgl/lvgl-v8.3/src/core/lv_obj_style_gen.d ./LCD/lvgl/lvgl-v8.3/src/core/lv_obj_style_gen.o ./LCD/lvgl/lvgl-v8.3/src/core/lv_obj_style_gen.su ./LCD/lvgl/lvgl-v8.3/src/core/lv_obj_tree.cyclo ./LCD/lvgl/lvgl-v8.3/src/core/lv_obj_tree.d ./LCD/lvgl/lvgl-v8.3/src/core/lv_obj_tree.o ./LCD/lvgl/lvgl-v8.3/src/core/lv_obj_tree.su ./LCD/lvgl/lvgl-v8.3/src/core/lv_refr.cyclo ./LCD/lvgl/lvgl-v8.3/src/core/lv_refr.d ./LCD/lvgl/lvgl-v8.3/src/core/lv_refr.o ./LCD/lvgl/lvgl-v8.3/src/core/lv_refr.su ./LCD/lvgl/lvgl-v8.3/src/core/lv_theme.cyclo ./LCD/lvgl/lvgl-v8.3/src/core/lv_theme.d ./LCD/lvgl/lvgl-v8.3/src/core/lv_theme.o ./LCD/lvgl/lvgl-v8.3/src/core/lv_theme.su

.PHONY: clean-LCD-2f-lvgl-2f-lvgl-2d-v8-2e-3-2f-src-2f-core

