################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (10.3-2021.10)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../LCD/lvgl/lvgl-v8.3/src/widgets/lv_arc.c \
../LCD/lvgl/lvgl-v8.3/src/widgets/lv_bar.c \
../LCD/lvgl/lvgl-v8.3/src/widgets/lv_btn.c \
../LCD/lvgl/lvgl-v8.3/src/widgets/lv_btnmatrix.c \
../LCD/lvgl/lvgl-v8.3/src/widgets/lv_canvas.c \
../LCD/lvgl/lvgl-v8.3/src/widgets/lv_checkbox.c \
../LCD/lvgl/lvgl-v8.3/src/widgets/lv_dropdown.c \
../LCD/lvgl/lvgl-v8.3/src/widgets/lv_img.c \
../LCD/lvgl/lvgl-v8.3/src/widgets/lv_label.c \
../LCD/lvgl/lvgl-v8.3/src/widgets/lv_line.c \
../LCD/lvgl/lvgl-v8.3/src/widgets/lv_objx_templ.c \
../LCD/lvgl/lvgl-v8.3/src/widgets/lv_roller.c \
../LCD/lvgl/lvgl-v8.3/src/widgets/lv_slider.c \
../LCD/lvgl/lvgl-v8.3/src/widgets/lv_switch.c \
../LCD/lvgl/lvgl-v8.3/src/widgets/lv_table.c \
../LCD/lvgl/lvgl-v8.3/src/widgets/lv_textarea.c 

OBJS += \
./LCD/lvgl/lvgl-v8.3/src/widgets/lv_arc.o \
./LCD/lvgl/lvgl-v8.3/src/widgets/lv_bar.o \
./LCD/lvgl/lvgl-v8.3/src/widgets/lv_btn.o \
./LCD/lvgl/lvgl-v8.3/src/widgets/lv_btnmatrix.o \
./LCD/lvgl/lvgl-v8.3/src/widgets/lv_canvas.o \
./LCD/lvgl/lvgl-v8.3/src/widgets/lv_checkbox.o \
./LCD/lvgl/lvgl-v8.3/src/widgets/lv_dropdown.o \
./LCD/lvgl/lvgl-v8.3/src/widgets/lv_img.o \
./LCD/lvgl/lvgl-v8.3/src/widgets/lv_label.o \
./LCD/lvgl/lvgl-v8.3/src/widgets/lv_line.o \
./LCD/lvgl/lvgl-v8.3/src/widgets/lv_objx_templ.o \
./LCD/lvgl/lvgl-v8.3/src/widgets/lv_roller.o \
./LCD/lvgl/lvgl-v8.3/src/widgets/lv_slider.o \
./LCD/lvgl/lvgl-v8.3/src/widgets/lv_switch.o \
./LCD/lvgl/lvgl-v8.3/src/widgets/lv_table.o \
./LCD/lvgl/lvgl-v8.3/src/widgets/lv_textarea.o 

C_DEPS += \
./LCD/lvgl/lvgl-v8.3/src/widgets/lv_arc.d \
./LCD/lvgl/lvgl-v8.3/src/widgets/lv_bar.d \
./LCD/lvgl/lvgl-v8.3/src/widgets/lv_btn.d \
./LCD/lvgl/lvgl-v8.3/src/widgets/lv_btnmatrix.d \
./LCD/lvgl/lvgl-v8.3/src/widgets/lv_canvas.d \
./LCD/lvgl/lvgl-v8.3/src/widgets/lv_checkbox.d \
./LCD/lvgl/lvgl-v8.3/src/widgets/lv_dropdown.d \
./LCD/lvgl/lvgl-v8.3/src/widgets/lv_img.d \
./LCD/lvgl/lvgl-v8.3/src/widgets/lv_label.d \
./LCD/lvgl/lvgl-v8.3/src/widgets/lv_line.d \
./LCD/lvgl/lvgl-v8.3/src/widgets/lv_objx_templ.d \
./LCD/lvgl/lvgl-v8.3/src/widgets/lv_roller.d \
./LCD/lvgl/lvgl-v8.3/src/widgets/lv_slider.d \
./LCD/lvgl/lvgl-v8.3/src/widgets/lv_switch.d \
./LCD/lvgl/lvgl-v8.3/src/widgets/lv_table.d \
./LCD/lvgl/lvgl-v8.3/src/widgets/lv_textarea.d 


# Each subdirectory must supply rules for building sources it contributes
LCD/lvgl/lvgl-v8.3/src/widgets/%.o LCD/lvgl/lvgl-v8.3/src/widgets/%.su: ../LCD/lvgl/lvgl-v8.3/src/widgets/%.c LCD/lvgl/lvgl-v8.3/src/widgets/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m3 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F103xE -c -I../Core/Inc -I../Drivers/STM32F1xx_HAL_Driver/Inc -I../Drivers/STM32F1xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F1xx/Include -I../Drivers/CMSIS/Include -I"/home/jamesyoung/Documents/School/ELEC3300-Project/Project/LCD" -O1 -ffunction-sections -fdata-sections -Wall -fdata-sections -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"

clean: clean-LCD-2f-lvgl-2f-lvgl-2d-v8-2e-3-2f-src-2f-widgets

clean-LCD-2f-lvgl-2f-lvgl-2d-v8-2e-3-2f-src-2f-widgets:
	-$(RM) ./LCD/lvgl/lvgl-v8.3/src/widgets/lv_arc.d ./LCD/lvgl/lvgl-v8.3/src/widgets/lv_arc.o ./LCD/lvgl/lvgl-v8.3/src/widgets/lv_arc.su ./LCD/lvgl/lvgl-v8.3/src/widgets/lv_bar.d ./LCD/lvgl/lvgl-v8.3/src/widgets/lv_bar.o ./LCD/lvgl/lvgl-v8.3/src/widgets/lv_bar.su ./LCD/lvgl/lvgl-v8.3/src/widgets/lv_btn.d ./LCD/lvgl/lvgl-v8.3/src/widgets/lv_btn.o ./LCD/lvgl/lvgl-v8.3/src/widgets/lv_btn.su ./LCD/lvgl/lvgl-v8.3/src/widgets/lv_btnmatrix.d ./LCD/lvgl/lvgl-v8.3/src/widgets/lv_btnmatrix.o ./LCD/lvgl/lvgl-v8.3/src/widgets/lv_btnmatrix.su ./LCD/lvgl/lvgl-v8.3/src/widgets/lv_canvas.d ./LCD/lvgl/lvgl-v8.3/src/widgets/lv_canvas.o ./LCD/lvgl/lvgl-v8.3/src/widgets/lv_canvas.su ./LCD/lvgl/lvgl-v8.3/src/widgets/lv_checkbox.d ./LCD/lvgl/lvgl-v8.3/src/widgets/lv_checkbox.o ./LCD/lvgl/lvgl-v8.3/src/widgets/lv_checkbox.su ./LCD/lvgl/lvgl-v8.3/src/widgets/lv_dropdown.d ./LCD/lvgl/lvgl-v8.3/src/widgets/lv_dropdown.o ./LCD/lvgl/lvgl-v8.3/src/widgets/lv_dropdown.su ./LCD/lvgl/lvgl-v8.3/src/widgets/lv_img.d ./LCD/lvgl/lvgl-v8.3/src/widgets/lv_img.o ./LCD/lvgl/lvgl-v8.3/src/widgets/lv_img.su ./LCD/lvgl/lvgl-v8.3/src/widgets/lv_label.d ./LCD/lvgl/lvgl-v8.3/src/widgets/lv_label.o ./LCD/lvgl/lvgl-v8.3/src/widgets/lv_label.su ./LCD/lvgl/lvgl-v8.3/src/widgets/lv_line.d ./LCD/lvgl/lvgl-v8.3/src/widgets/lv_line.o ./LCD/lvgl/lvgl-v8.3/src/widgets/lv_line.su ./LCD/lvgl/lvgl-v8.3/src/widgets/lv_objx_templ.d ./LCD/lvgl/lvgl-v8.3/src/widgets/lv_objx_templ.o ./LCD/lvgl/lvgl-v8.3/src/widgets/lv_objx_templ.su ./LCD/lvgl/lvgl-v8.3/src/widgets/lv_roller.d ./LCD/lvgl/lvgl-v8.3/src/widgets/lv_roller.o ./LCD/lvgl/lvgl-v8.3/src/widgets/lv_roller.su ./LCD/lvgl/lvgl-v8.3/src/widgets/lv_slider.d ./LCD/lvgl/lvgl-v8.3/src/widgets/lv_slider.o ./LCD/lvgl/lvgl-v8.3/src/widgets/lv_slider.su ./LCD/lvgl/lvgl-v8.3/src/widgets/lv_switch.d ./LCD/lvgl/lvgl-v8.3/src/widgets/lv_switch.o ./LCD/lvgl/lvgl-v8.3/src/widgets/lv_switch.su ./LCD/lvgl/lvgl-v8.3/src/widgets/lv_table.d ./LCD/lvgl/lvgl-v8.3/src/widgets/lv_table.o ./LCD/lvgl/lvgl-v8.3/src/widgets/lv_table.su ./LCD/lvgl/lvgl-v8.3/src/widgets/lv_textarea.d ./LCD/lvgl/lvgl-v8.3/src/widgets/lv_textarea.o ./LCD/lvgl/lvgl-v8.3/src/widgets/lv_textarea.su

.PHONY: clean-LCD-2f-lvgl-2f-lvgl-2d-v8-2e-3-2f-src-2f-widgets

