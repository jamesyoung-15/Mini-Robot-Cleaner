################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (10.3-2021.10)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../LCD/lvgl/lvgl-v8.3/demos/benchmark/assets/img_benchmark_cogwheel_alpha16.c \
../LCD/lvgl/lvgl-v8.3/demos/benchmark/assets/img_benchmark_cogwheel_argb.c \
../LCD/lvgl/lvgl-v8.3/demos/benchmark/assets/img_benchmark_cogwheel_chroma_keyed.c \
../LCD/lvgl/lvgl-v8.3/demos/benchmark/assets/img_benchmark_cogwheel_indexed16.c \
../LCD/lvgl/lvgl-v8.3/demos/benchmark/assets/img_benchmark_cogwheel_rgb.c \
../LCD/lvgl/lvgl-v8.3/demos/benchmark/assets/img_benchmark_cogwheel_rgb565a8.c \
../LCD/lvgl/lvgl-v8.3/demos/benchmark/assets/lv_font_bechmark_montserrat_12_compr_az.c.c \
../LCD/lvgl/lvgl-v8.3/demos/benchmark/assets/lv_font_bechmark_montserrat_16_compr_az.c.c \
../LCD/lvgl/lvgl-v8.3/demos/benchmark/assets/lv_font_bechmark_montserrat_28_compr_az.c.c 

OBJS += \
./LCD/lvgl/lvgl-v8.3/demos/benchmark/assets/img_benchmark_cogwheel_alpha16.o \
./LCD/lvgl/lvgl-v8.3/demos/benchmark/assets/img_benchmark_cogwheel_argb.o \
./LCD/lvgl/lvgl-v8.3/demos/benchmark/assets/img_benchmark_cogwheel_chroma_keyed.o \
./LCD/lvgl/lvgl-v8.3/demos/benchmark/assets/img_benchmark_cogwheel_indexed16.o \
./LCD/lvgl/lvgl-v8.3/demos/benchmark/assets/img_benchmark_cogwheel_rgb.o \
./LCD/lvgl/lvgl-v8.3/demos/benchmark/assets/img_benchmark_cogwheel_rgb565a8.o \
./LCD/lvgl/lvgl-v8.3/demos/benchmark/assets/lv_font_bechmark_montserrat_12_compr_az.c.o \
./LCD/lvgl/lvgl-v8.3/demos/benchmark/assets/lv_font_bechmark_montserrat_16_compr_az.c.o \
./LCD/lvgl/lvgl-v8.3/demos/benchmark/assets/lv_font_bechmark_montserrat_28_compr_az.c.o 

C_DEPS += \
./LCD/lvgl/lvgl-v8.3/demos/benchmark/assets/img_benchmark_cogwheel_alpha16.d \
./LCD/lvgl/lvgl-v8.3/demos/benchmark/assets/img_benchmark_cogwheel_argb.d \
./LCD/lvgl/lvgl-v8.3/demos/benchmark/assets/img_benchmark_cogwheel_chroma_keyed.d \
./LCD/lvgl/lvgl-v8.3/demos/benchmark/assets/img_benchmark_cogwheel_indexed16.d \
./LCD/lvgl/lvgl-v8.3/demos/benchmark/assets/img_benchmark_cogwheel_rgb.d \
./LCD/lvgl/lvgl-v8.3/demos/benchmark/assets/img_benchmark_cogwheel_rgb565a8.d \
./LCD/lvgl/lvgl-v8.3/demos/benchmark/assets/lv_font_bechmark_montserrat_12_compr_az.c.d \
./LCD/lvgl/lvgl-v8.3/demos/benchmark/assets/lv_font_bechmark_montserrat_16_compr_az.c.d \
./LCD/lvgl/lvgl-v8.3/demos/benchmark/assets/lv_font_bechmark_montserrat_28_compr_az.c.d 


# Each subdirectory must supply rules for building sources it contributes
LCD/lvgl/lvgl-v8.3/demos/benchmark/assets/%.o LCD/lvgl/lvgl-v8.3/demos/benchmark/assets/%.su: ../LCD/lvgl/lvgl-v8.3/demos/benchmark/assets/%.c LCD/lvgl/lvgl-v8.3/demos/benchmark/assets/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m3 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F103xE -c -I../Core/Inc -I../Drivers/STM32F1xx_HAL_Driver/Inc -I../Drivers/STM32F1xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F1xx/Include -I../Drivers/CMSIS/Include -I"/home/jamesyoung/Documents/School/ELEC3300-Project/Project/LCD" -O1 -ffunction-sections -fdata-sections -Wall -fdata-sections -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"

clean: clean-LCD-2f-lvgl-2f-lvgl-2d-v8-2e-3-2f-demos-2f-benchmark-2f-assets

clean-LCD-2f-lvgl-2f-lvgl-2d-v8-2e-3-2f-demos-2f-benchmark-2f-assets:
	-$(RM) ./LCD/lvgl/lvgl-v8.3/demos/benchmark/assets/img_benchmark_cogwheel_alpha16.d ./LCD/lvgl/lvgl-v8.3/demos/benchmark/assets/img_benchmark_cogwheel_alpha16.o ./LCD/lvgl/lvgl-v8.3/demos/benchmark/assets/img_benchmark_cogwheel_alpha16.su ./LCD/lvgl/lvgl-v8.3/demos/benchmark/assets/img_benchmark_cogwheel_argb.d ./LCD/lvgl/lvgl-v8.3/demos/benchmark/assets/img_benchmark_cogwheel_argb.o ./LCD/lvgl/lvgl-v8.3/demos/benchmark/assets/img_benchmark_cogwheel_argb.su ./LCD/lvgl/lvgl-v8.3/demos/benchmark/assets/img_benchmark_cogwheel_chroma_keyed.d ./LCD/lvgl/lvgl-v8.3/demos/benchmark/assets/img_benchmark_cogwheel_chroma_keyed.o ./LCD/lvgl/lvgl-v8.3/demos/benchmark/assets/img_benchmark_cogwheel_chroma_keyed.su ./LCD/lvgl/lvgl-v8.3/demos/benchmark/assets/img_benchmark_cogwheel_indexed16.d ./LCD/lvgl/lvgl-v8.3/demos/benchmark/assets/img_benchmark_cogwheel_indexed16.o ./LCD/lvgl/lvgl-v8.3/demos/benchmark/assets/img_benchmark_cogwheel_indexed16.su ./LCD/lvgl/lvgl-v8.3/demos/benchmark/assets/img_benchmark_cogwheel_rgb.d ./LCD/lvgl/lvgl-v8.3/demos/benchmark/assets/img_benchmark_cogwheel_rgb.o ./LCD/lvgl/lvgl-v8.3/demos/benchmark/assets/img_benchmark_cogwheel_rgb.su ./LCD/lvgl/lvgl-v8.3/demos/benchmark/assets/img_benchmark_cogwheel_rgb565a8.d ./LCD/lvgl/lvgl-v8.3/demos/benchmark/assets/img_benchmark_cogwheel_rgb565a8.o ./LCD/lvgl/lvgl-v8.3/demos/benchmark/assets/img_benchmark_cogwheel_rgb565a8.su ./LCD/lvgl/lvgl-v8.3/demos/benchmark/assets/lv_font_bechmark_montserrat_12_compr_az.c.d ./LCD/lvgl/lvgl-v8.3/demos/benchmark/assets/lv_font_bechmark_montserrat_12_compr_az.c.o ./LCD/lvgl/lvgl-v8.3/demos/benchmark/assets/lv_font_bechmark_montserrat_12_compr_az.c.su ./LCD/lvgl/lvgl-v8.3/demos/benchmark/assets/lv_font_bechmark_montserrat_16_compr_az.c.d ./LCD/lvgl/lvgl-v8.3/demos/benchmark/assets/lv_font_bechmark_montserrat_16_compr_az.c.o ./LCD/lvgl/lvgl-v8.3/demos/benchmark/assets/lv_font_bechmark_montserrat_16_compr_az.c.su ./LCD/lvgl/lvgl-v8.3/demos/benchmark/assets/lv_font_bechmark_montserrat_28_compr_az.c.d ./LCD/lvgl/lvgl-v8.3/demos/benchmark/assets/lv_font_bechmark_montserrat_28_compr_az.c.o ./LCD/lvgl/lvgl-v8.3/demos/benchmark/assets/lv_font_bechmark_montserrat_28_compr_az.c.su

.PHONY: clean-LCD-2f-lvgl-2f-lvgl-2d-v8-2e-3-2f-demos-2f-benchmark-2f-assets

