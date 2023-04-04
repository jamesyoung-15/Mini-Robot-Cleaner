################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (10.3-2021.10)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../LCD/lvgl/lvgl-v8.3/src/misc/lv_anim.c \
../LCD/lvgl/lvgl-v8.3/src/misc/lv_anim_timeline.c \
../LCD/lvgl/lvgl-v8.3/src/misc/lv_area.c \
../LCD/lvgl/lvgl-v8.3/src/misc/lv_async.c \
../LCD/lvgl/lvgl-v8.3/src/misc/lv_bidi.c \
../LCD/lvgl/lvgl-v8.3/src/misc/lv_color.c \
../LCD/lvgl/lvgl-v8.3/src/misc/lv_fs.c \
../LCD/lvgl/lvgl-v8.3/src/misc/lv_gc.c \
../LCD/lvgl/lvgl-v8.3/src/misc/lv_ll.c \
../LCD/lvgl/lvgl-v8.3/src/misc/lv_log.c \
../LCD/lvgl/lvgl-v8.3/src/misc/lv_lru.c \
../LCD/lvgl/lvgl-v8.3/src/misc/lv_math.c \
../LCD/lvgl/lvgl-v8.3/src/misc/lv_mem.c \
../LCD/lvgl/lvgl-v8.3/src/misc/lv_printf.c \
../LCD/lvgl/lvgl-v8.3/src/misc/lv_style.c \
../LCD/lvgl/lvgl-v8.3/src/misc/lv_style_gen.c \
../LCD/lvgl/lvgl-v8.3/src/misc/lv_templ.c \
../LCD/lvgl/lvgl-v8.3/src/misc/lv_timer.c \
../LCD/lvgl/lvgl-v8.3/src/misc/lv_tlsf.c \
../LCD/lvgl/lvgl-v8.3/src/misc/lv_txt.c \
../LCD/lvgl/lvgl-v8.3/src/misc/lv_txt_ap.c \
../LCD/lvgl/lvgl-v8.3/src/misc/lv_utils.c 

OBJS += \
./LCD/lvgl/lvgl-v8.3/src/misc/lv_anim.o \
./LCD/lvgl/lvgl-v8.3/src/misc/lv_anim_timeline.o \
./LCD/lvgl/lvgl-v8.3/src/misc/lv_area.o \
./LCD/lvgl/lvgl-v8.3/src/misc/lv_async.o \
./LCD/lvgl/lvgl-v8.3/src/misc/lv_bidi.o \
./LCD/lvgl/lvgl-v8.3/src/misc/lv_color.o \
./LCD/lvgl/lvgl-v8.3/src/misc/lv_fs.o \
./LCD/lvgl/lvgl-v8.3/src/misc/lv_gc.o \
./LCD/lvgl/lvgl-v8.3/src/misc/lv_ll.o \
./LCD/lvgl/lvgl-v8.3/src/misc/lv_log.o \
./LCD/lvgl/lvgl-v8.3/src/misc/lv_lru.o \
./LCD/lvgl/lvgl-v8.3/src/misc/lv_math.o \
./LCD/lvgl/lvgl-v8.3/src/misc/lv_mem.o \
./LCD/lvgl/lvgl-v8.3/src/misc/lv_printf.o \
./LCD/lvgl/lvgl-v8.3/src/misc/lv_style.o \
./LCD/lvgl/lvgl-v8.3/src/misc/lv_style_gen.o \
./LCD/lvgl/lvgl-v8.3/src/misc/lv_templ.o \
./LCD/lvgl/lvgl-v8.3/src/misc/lv_timer.o \
./LCD/lvgl/lvgl-v8.3/src/misc/lv_tlsf.o \
./LCD/lvgl/lvgl-v8.3/src/misc/lv_txt.o \
./LCD/lvgl/lvgl-v8.3/src/misc/lv_txt_ap.o \
./LCD/lvgl/lvgl-v8.3/src/misc/lv_utils.o 

C_DEPS += \
./LCD/lvgl/lvgl-v8.3/src/misc/lv_anim.d \
./LCD/lvgl/lvgl-v8.3/src/misc/lv_anim_timeline.d \
./LCD/lvgl/lvgl-v8.3/src/misc/lv_area.d \
./LCD/lvgl/lvgl-v8.3/src/misc/lv_async.d \
./LCD/lvgl/lvgl-v8.3/src/misc/lv_bidi.d \
./LCD/lvgl/lvgl-v8.3/src/misc/lv_color.d \
./LCD/lvgl/lvgl-v8.3/src/misc/lv_fs.d \
./LCD/lvgl/lvgl-v8.3/src/misc/lv_gc.d \
./LCD/lvgl/lvgl-v8.3/src/misc/lv_ll.d \
./LCD/lvgl/lvgl-v8.3/src/misc/lv_log.d \
./LCD/lvgl/lvgl-v8.3/src/misc/lv_lru.d \
./LCD/lvgl/lvgl-v8.3/src/misc/lv_math.d \
./LCD/lvgl/lvgl-v8.3/src/misc/lv_mem.d \
./LCD/lvgl/lvgl-v8.3/src/misc/lv_printf.d \
./LCD/lvgl/lvgl-v8.3/src/misc/lv_style.d \
./LCD/lvgl/lvgl-v8.3/src/misc/lv_style_gen.d \
./LCD/lvgl/lvgl-v8.3/src/misc/lv_templ.d \
./LCD/lvgl/lvgl-v8.3/src/misc/lv_timer.d \
./LCD/lvgl/lvgl-v8.3/src/misc/lv_tlsf.d \
./LCD/lvgl/lvgl-v8.3/src/misc/lv_txt.d \
./LCD/lvgl/lvgl-v8.3/src/misc/lv_txt_ap.d \
./LCD/lvgl/lvgl-v8.3/src/misc/lv_utils.d 


# Each subdirectory must supply rules for building sources it contributes
LCD/lvgl/lvgl-v8.3/src/misc/%.o LCD/lvgl/lvgl-v8.3/src/misc/%.su: ../LCD/lvgl/lvgl-v8.3/src/misc/%.c LCD/lvgl/lvgl-v8.3/src/misc/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m3 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F103xE -c -I../Core/Inc -I../Drivers/STM32F1xx_HAL_Driver/Inc -I../Drivers/STM32F1xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F1xx/Include -I../Drivers/CMSIS/Include -I"/home/jamesyoung/Documents/School/ELEC3300-Project/Project/LCD" -I"/home/jamesyoung/Documents/School/ELEC3300-Project/Project/ESP_Driver" -O1 -ffunction-sections -fdata-sections -Wall -fdata-sections -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"

clean: clean-LCD-2f-lvgl-2f-lvgl-2d-v8-2e-3-2f-src-2f-misc

clean-LCD-2f-lvgl-2f-lvgl-2d-v8-2e-3-2f-src-2f-misc:
	-$(RM) ./LCD/lvgl/lvgl-v8.3/src/misc/lv_anim.d ./LCD/lvgl/lvgl-v8.3/src/misc/lv_anim.o ./LCD/lvgl/lvgl-v8.3/src/misc/lv_anim.su ./LCD/lvgl/lvgl-v8.3/src/misc/lv_anim_timeline.d ./LCD/lvgl/lvgl-v8.3/src/misc/lv_anim_timeline.o ./LCD/lvgl/lvgl-v8.3/src/misc/lv_anim_timeline.su ./LCD/lvgl/lvgl-v8.3/src/misc/lv_area.d ./LCD/lvgl/lvgl-v8.3/src/misc/lv_area.o ./LCD/lvgl/lvgl-v8.3/src/misc/lv_area.su ./LCD/lvgl/lvgl-v8.3/src/misc/lv_async.d ./LCD/lvgl/lvgl-v8.3/src/misc/lv_async.o ./LCD/lvgl/lvgl-v8.3/src/misc/lv_async.su ./LCD/lvgl/lvgl-v8.3/src/misc/lv_bidi.d ./LCD/lvgl/lvgl-v8.3/src/misc/lv_bidi.o ./LCD/lvgl/lvgl-v8.3/src/misc/lv_bidi.su ./LCD/lvgl/lvgl-v8.3/src/misc/lv_color.d ./LCD/lvgl/lvgl-v8.3/src/misc/lv_color.o ./LCD/lvgl/lvgl-v8.3/src/misc/lv_color.su ./LCD/lvgl/lvgl-v8.3/src/misc/lv_fs.d ./LCD/lvgl/lvgl-v8.3/src/misc/lv_fs.o ./LCD/lvgl/lvgl-v8.3/src/misc/lv_fs.su ./LCD/lvgl/lvgl-v8.3/src/misc/lv_gc.d ./LCD/lvgl/lvgl-v8.3/src/misc/lv_gc.o ./LCD/lvgl/lvgl-v8.3/src/misc/lv_gc.su ./LCD/lvgl/lvgl-v8.3/src/misc/lv_ll.d ./LCD/lvgl/lvgl-v8.3/src/misc/lv_ll.o ./LCD/lvgl/lvgl-v8.3/src/misc/lv_ll.su ./LCD/lvgl/lvgl-v8.3/src/misc/lv_log.d ./LCD/lvgl/lvgl-v8.3/src/misc/lv_log.o ./LCD/lvgl/lvgl-v8.3/src/misc/lv_log.su ./LCD/lvgl/lvgl-v8.3/src/misc/lv_lru.d ./LCD/lvgl/lvgl-v8.3/src/misc/lv_lru.o ./LCD/lvgl/lvgl-v8.3/src/misc/lv_lru.su ./LCD/lvgl/lvgl-v8.3/src/misc/lv_math.d ./LCD/lvgl/lvgl-v8.3/src/misc/lv_math.o ./LCD/lvgl/lvgl-v8.3/src/misc/lv_math.su ./LCD/lvgl/lvgl-v8.3/src/misc/lv_mem.d ./LCD/lvgl/lvgl-v8.3/src/misc/lv_mem.o ./LCD/lvgl/lvgl-v8.3/src/misc/lv_mem.su ./LCD/lvgl/lvgl-v8.3/src/misc/lv_printf.d ./LCD/lvgl/lvgl-v8.3/src/misc/lv_printf.o ./LCD/lvgl/lvgl-v8.3/src/misc/lv_printf.su ./LCD/lvgl/lvgl-v8.3/src/misc/lv_style.d ./LCD/lvgl/lvgl-v8.3/src/misc/lv_style.o ./LCD/lvgl/lvgl-v8.3/src/misc/lv_style.su ./LCD/lvgl/lvgl-v8.3/src/misc/lv_style_gen.d ./LCD/lvgl/lvgl-v8.3/src/misc/lv_style_gen.o ./LCD/lvgl/lvgl-v8.3/src/misc/lv_style_gen.su ./LCD/lvgl/lvgl-v8.3/src/misc/lv_templ.d ./LCD/lvgl/lvgl-v8.3/src/misc/lv_templ.o ./LCD/lvgl/lvgl-v8.3/src/misc/lv_templ.su ./LCD/lvgl/lvgl-v8.3/src/misc/lv_timer.d ./LCD/lvgl/lvgl-v8.3/src/misc/lv_timer.o ./LCD/lvgl/lvgl-v8.3/src/misc/lv_timer.su ./LCD/lvgl/lvgl-v8.3/src/misc/lv_tlsf.d ./LCD/lvgl/lvgl-v8.3/src/misc/lv_tlsf.o ./LCD/lvgl/lvgl-v8.3/src/misc/lv_tlsf.su ./LCD/lvgl/lvgl-v8.3/src/misc/lv_txt.d ./LCD/lvgl/lvgl-v8.3/src/misc/lv_txt.o ./LCD/lvgl/lvgl-v8.3/src/misc/lv_txt.su ./LCD/lvgl/lvgl-v8.3/src/misc/lv_txt_ap.d ./LCD/lvgl/lvgl-v8.3/src/misc/lv_txt_ap.o ./LCD/lvgl/lvgl-v8.3/src/misc/lv_txt_ap.su ./LCD/lvgl/lvgl-v8.3/src/misc/lv_utils.d ./LCD/lvgl/lvgl-v8.3/src/misc/lv_utils.o ./LCD/lvgl/lvgl-v8.3/src/misc/lv_utils.su

.PHONY: clean-LCD-2f-lvgl-2f-lvgl-2d-v8-2e-3-2f-src-2f-misc

