################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (10.3-2021.10)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../LCD/lvgl/lvgl-v8.3/tests/src/test_cases/_test_template.c \
../LCD/lvgl/lvgl-v8.3/tests/src/test_cases/test_arc.c \
../LCD/lvgl/lvgl-v8.3/tests/src/test_cases/test_bar.c \
../LCD/lvgl/lvgl-v8.3/tests/src/test_cases/test_checkbox.c \
../LCD/lvgl/lvgl-v8.3/tests/src/test_cases/test_config.c \
../LCD/lvgl/lvgl-v8.3/tests/src/test_cases/test_demo_stress.c \
../LCD/lvgl/lvgl-v8.3/tests/src/test_cases/test_demo_widgets.c \
../LCD/lvgl/lvgl-v8.3/tests/src/test_cases/test_dropdown.c \
../LCD/lvgl/lvgl-v8.3/tests/src/test_cases/test_event.c \
../LCD/lvgl/lvgl-v8.3/tests/src/test_cases/test_font_loader.c \
../LCD/lvgl/lvgl-v8.3/tests/src/test_cases/test_fs.c \
../LCD/lvgl/lvgl-v8.3/tests/src/test_cases/test_line.c \
../LCD/lvgl/lvgl-v8.3/tests/src/test_cases/test_mem.c \
../LCD/lvgl/lvgl-v8.3/tests/src/test_cases/test_obj_tree.c \
../LCD/lvgl/lvgl-v8.3/tests/src/test_cases/test_slider.c \
../LCD/lvgl/lvgl-v8.3/tests/src/test_cases/test_snapshot.c \
../LCD/lvgl/lvgl-v8.3/tests/src/test_cases/test_style.c \
../LCD/lvgl/lvgl-v8.3/tests/src/test_cases/test_switch.c \
../LCD/lvgl/lvgl-v8.3/tests/src/test_cases/test_table.c \
../LCD/lvgl/lvgl-v8.3/tests/src/test_cases/test_textarea.c \
../LCD/lvgl/lvgl-v8.3/tests/src/test_cases/test_txt.c 

OBJS += \
./LCD/lvgl/lvgl-v8.3/tests/src/test_cases/_test_template.o \
./LCD/lvgl/lvgl-v8.3/tests/src/test_cases/test_arc.o \
./LCD/lvgl/lvgl-v8.3/tests/src/test_cases/test_bar.o \
./LCD/lvgl/lvgl-v8.3/tests/src/test_cases/test_checkbox.o \
./LCD/lvgl/lvgl-v8.3/tests/src/test_cases/test_config.o \
./LCD/lvgl/lvgl-v8.3/tests/src/test_cases/test_demo_stress.o \
./LCD/lvgl/lvgl-v8.3/tests/src/test_cases/test_demo_widgets.o \
./LCD/lvgl/lvgl-v8.3/tests/src/test_cases/test_dropdown.o \
./LCD/lvgl/lvgl-v8.3/tests/src/test_cases/test_event.o \
./LCD/lvgl/lvgl-v8.3/tests/src/test_cases/test_font_loader.o \
./LCD/lvgl/lvgl-v8.3/tests/src/test_cases/test_fs.o \
./LCD/lvgl/lvgl-v8.3/tests/src/test_cases/test_line.o \
./LCD/lvgl/lvgl-v8.3/tests/src/test_cases/test_mem.o \
./LCD/lvgl/lvgl-v8.3/tests/src/test_cases/test_obj_tree.o \
./LCD/lvgl/lvgl-v8.3/tests/src/test_cases/test_slider.o \
./LCD/lvgl/lvgl-v8.3/tests/src/test_cases/test_snapshot.o \
./LCD/lvgl/lvgl-v8.3/tests/src/test_cases/test_style.o \
./LCD/lvgl/lvgl-v8.3/tests/src/test_cases/test_switch.o \
./LCD/lvgl/lvgl-v8.3/tests/src/test_cases/test_table.o \
./LCD/lvgl/lvgl-v8.3/tests/src/test_cases/test_textarea.o \
./LCD/lvgl/lvgl-v8.3/tests/src/test_cases/test_txt.o 

C_DEPS += \
./LCD/lvgl/lvgl-v8.3/tests/src/test_cases/_test_template.d \
./LCD/lvgl/lvgl-v8.3/tests/src/test_cases/test_arc.d \
./LCD/lvgl/lvgl-v8.3/tests/src/test_cases/test_bar.d \
./LCD/lvgl/lvgl-v8.3/tests/src/test_cases/test_checkbox.d \
./LCD/lvgl/lvgl-v8.3/tests/src/test_cases/test_config.d \
./LCD/lvgl/lvgl-v8.3/tests/src/test_cases/test_demo_stress.d \
./LCD/lvgl/lvgl-v8.3/tests/src/test_cases/test_demo_widgets.d \
./LCD/lvgl/lvgl-v8.3/tests/src/test_cases/test_dropdown.d \
./LCD/lvgl/lvgl-v8.3/tests/src/test_cases/test_event.d \
./LCD/lvgl/lvgl-v8.3/tests/src/test_cases/test_font_loader.d \
./LCD/lvgl/lvgl-v8.3/tests/src/test_cases/test_fs.d \
./LCD/lvgl/lvgl-v8.3/tests/src/test_cases/test_line.d \
./LCD/lvgl/lvgl-v8.3/tests/src/test_cases/test_mem.d \
./LCD/lvgl/lvgl-v8.3/tests/src/test_cases/test_obj_tree.d \
./LCD/lvgl/lvgl-v8.3/tests/src/test_cases/test_slider.d \
./LCD/lvgl/lvgl-v8.3/tests/src/test_cases/test_snapshot.d \
./LCD/lvgl/lvgl-v8.3/tests/src/test_cases/test_style.d \
./LCD/lvgl/lvgl-v8.3/tests/src/test_cases/test_switch.d \
./LCD/lvgl/lvgl-v8.3/tests/src/test_cases/test_table.d \
./LCD/lvgl/lvgl-v8.3/tests/src/test_cases/test_textarea.d \
./LCD/lvgl/lvgl-v8.3/tests/src/test_cases/test_txt.d 


# Each subdirectory must supply rules for building sources it contributes
LCD/lvgl/lvgl-v8.3/tests/src/test_cases/%.o LCD/lvgl/lvgl-v8.3/tests/src/test_cases/%.su LCD/lvgl/lvgl-v8.3/tests/src/test_cases/%.cyclo: ../LCD/lvgl/lvgl-v8.3/tests/src/test_cases/%.c LCD/lvgl/lvgl-v8.3/tests/src/test_cases/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m3 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F103xE -c -I../Core/Inc -I../Drivers/STM32F1xx_HAL_Driver/Inc -I../Drivers/STM32F1xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F1xx/Include -I../Drivers/CMSIS/Include -I"/home/jamesyoung/Documents/School/ELEC3300-Project/Project/LCD" -I"/home/jamesyoung/Documents/School/ELEC3300-Project/Project/ESP_Driver" -I"/home/jamesyoung/Documents/School/ELEC3300-Project/Project/Motor_Control" -O1 -ffunction-sections -fdata-sections -Wall -fdata-sections -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"

clean: clean-LCD-2f-lvgl-2f-lvgl-2d-v8-2e-3-2f-tests-2f-src-2f-test_cases

clean-LCD-2f-lvgl-2f-lvgl-2d-v8-2e-3-2f-tests-2f-src-2f-test_cases:
	-$(RM) ./LCD/lvgl/lvgl-v8.3/tests/src/test_cases/_test_template.cyclo ./LCD/lvgl/lvgl-v8.3/tests/src/test_cases/_test_template.d ./LCD/lvgl/lvgl-v8.3/tests/src/test_cases/_test_template.o ./LCD/lvgl/lvgl-v8.3/tests/src/test_cases/_test_template.su ./LCD/lvgl/lvgl-v8.3/tests/src/test_cases/test_arc.cyclo ./LCD/lvgl/lvgl-v8.3/tests/src/test_cases/test_arc.d ./LCD/lvgl/lvgl-v8.3/tests/src/test_cases/test_arc.o ./LCD/lvgl/lvgl-v8.3/tests/src/test_cases/test_arc.su ./LCD/lvgl/lvgl-v8.3/tests/src/test_cases/test_bar.cyclo ./LCD/lvgl/lvgl-v8.3/tests/src/test_cases/test_bar.d ./LCD/lvgl/lvgl-v8.3/tests/src/test_cases/test_bar.o ./LCD/lvgl/lvgl-v8.3/tests/src/test_cases/test_bar.su ./LCD/lvgl/lvgl-v8.3/tests/src/test_cases/test_checkbox.cyclo ./LCD/lvgl/lvgl-v8.3/tests/src/test_cases/test_checkbox.d ./LCD/lvgl/lvgl-v8.3/tests/src/test_cases/test_checkbox.o ./LCD/lvgl/lvgl-v8.3/tests/src/test_cases/test_checkbox.su ./LCD/lvgl/lvgl-v8.3/tests/src/test_cases/test_config.cyclo ./LCD/lvgl/lvgl-v8.3/tests/src/test_cases/test_config.d ./LCD/lvgl/lvgl-v8.3/tests/src/test_cases/test_config.o ./LCD/lvgl/lvgl-v8.3/tests/src/test_cases/test_config.su ./LCD/lvgl/lvgl-v8.3/tests/src/test_cases/test_demo_stress.cyclo ./LCD/lvgl/lvgl-v8.3/tests/src/test_cases/test_demo_stress.d ./LCD/lvgl/lvgl-v8.3/tests/src/test_cases/test_demo_stress.o ./LCD/lvgl/lvgl-v8.3/tests/src/test_cases/test_demo_stress.su ./LCD/lvgl/lvgl-v8.3/tests/src/test_cases/test_demo_widgets.cyclo ./LCD/lvgl/lvgl-v8.3/tests/src/test_cases/test_demo_widgets.d ./LCD/lvgl/lvgl-v8.3/tests/src/test_cases/test_demo_widgets.o ./LCD/lvgl/lvgl-v8.3/tests/src/test_cases/test_demo_widgets.su ./LCD/lvgl/lvgl-v8.3/tests/src/test_cases/test_dropdown.cyclo ./LCD/lvgl/lvgl-v8.3/tests/src/test_cases/test_dropdown.d ./LCD/lvgl/lvgl-v8.3/tests/src/test_cases/test_dropdown.o ./LCD/lvgl/lvgl-v8.3/tests/src/test_cases/test_dropdown.su ./LCD/lvgl/lvgl-v8.3/tests/src/test_cases/test_event.cyclo ./LCD/lvgl/lvgl-v8.3/tests/src/test_cases/test_event.d ./LCD/lvgl/lvgl-v8.3/tests/src/test_cases/test_event.o ./LCD/lvgl/lvgl-v8.3/tests/src/test_cases/test_event.su ./LCD/lvgl/lvgl-v8.3/tests/src/test_cases/test_font_loader.cyclo ./LCD/lvgl/lvgl-v8.3/tests/src/test_cases/test_font_loader.d ./LCD/lvgl/lvgl-v8.3/tests/src/test_cases/test_font_loader.o ./LCD/lvgl/lvgl-v8.3/tests/src/test_cases/test_font_loader.su ./LCD/lvgl/lvgl-v8.3/tests/src/test_cases/test_fs.cyclo ./LCD/lvgl/lvgl-v8.3/tests/src/test_cases/test_fs.d ./LCD/lvgl/lvgl-v8.3/tests/src/test_cases/test_fs.o ./LCD/lvgl/lvgl-v8.3/tests/src/test_cases/test_fs.su ./LCD/lvgl/lvgl-v8.3/tests/src/test_cases/test_line.cyclo ./LCD/lvgl/lvgl-v8.3/tests/src/test_cases/test_line.d ./LCD/lvgl/lvgl-v8.3/tests/src/test_cases/test_line.o ./LCD/lvgl/lvgl-v8.3/tests/src/test_cases/test_line.su ./LCD/lvgl/lvgl-v8.3/tests/src/test_cases/test_mem.cyclo ./LCD/lvgl/lvgl-v8.3/tests/src/test_cases/test_mem.d ./LCD/lvgl/lvgl-v8.3/tests/src/test_cases/test_mem.o ./LCD/lvgl/lvgl-v8.3/tests/src/test_cases/test_mem.su ./LCD/lvgl/lvgl-v8.3/tests/src/test_cases/test_obj_tree.cyclo ./LCD/lvgl/lvgl-v8.3/tests/src/test_cases/test_obj_tree.d ./LCD/lvgl/lvgl-v8.3/tests/src/test_cases/test_obj_tree.o ./LCD/lvgl/lvgl-v8.3/tests/src/test_cases/test_obj_tree.su ./LCD/lvgl/lvgl-v8.3/tests/src/test_cases/test_slider.cyclo ./LCD/lvgl/lvgl-v8.3/tests/src/test_cases/test_slider.d ./LCD/lvgl/lvgl-v8.3/tests/src/test_cases/test_slider.o ./LCD/lvgl/lvgl-v8.3/tests/src/test_cases/test_slider.su ./LCD/lvgl/lvgl-v8.3/tests/src/test_cases/test_snapshot.cyclo ./LCD/lvgl/lvgl-v8.3/tests/src/test_cases/test_snapshot.d ./LCD/lvgl/lvgl-v8.3/tests/src/test_cases/test_snapshot.o ./LCD/lvgl/lvgl-v8.3/tests/src/test_cases/test_snapshot.su ./LCD/lvgl/lvgl-v8.3/tests/src/test_cases/test_style.cyclo ./LCD/lvgl/lvgl-v8.3/tests/src/test_cases/test_style.d ./LCD/lvgl/lvgl-v8.3/tests/src/test_cases/test_style.o ./LCD/lvgl/lvgl-v8.3/tests/src/test_cases/test_style.su ./LCD/lvgl/lvgl-v8.3/tests/src/test_cases/test_switch.cyclo ./LCD/lvgl/lvgl-v8.3/tests/src/test_cases/test_switch.d ./LCD/lvgl/lvgl-v8.3/tests/src/test_cases/test_switch.o ./LCD/lvgl/lvgl-v8.3/tests/src/test_cases/test_switch.su ./LCD/lvgl/lvgl-v8.3/tests/src/test_cases/test_table.cyclo ./LCD/lvgl/lvgl-v8.3/tests/src/test_cases/test_table.d ./LCD/lvgl/lvgl-v8.3/tests/src/test_cases/test_table.o ./LCD/lvgl/lvgl-v8.3/tests/src/test_cases/test_table.su ./LCD/lvgl/lvgl-v8.3/tests/src/test_cases/test_textarea.cyclo ./LCD/lvgl/lvgl-v8.3/tests/src/test_cases/test_textarea.d ./LCD/lvgl/lvgl-v8.3/tests/src/test_cases/test_textarea.o ./LCD/lvgl/lvgl-v8.3/tests/src/test_cases/test_textarea.su ./LCD/lvgl/lvgl-v8.3/tests/src/test_cases/test_txt.cyclo ./LCD/lvgl/lvgl-v8.3/tests/src/test_cases/test_txt.d ./LCD/lvgl/lvgl-v8.3/tests/src/test_cases/test_txt.o ./LCD/lvgl/lvgl-v8.3/tests/src/test_cases/test_txt.su

.PHONY: clean-LCD-2f-lvgl-2f-lvgl-2d-v8-2e-3-2f-tests-2f-src-2f-test_cases

