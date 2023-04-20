################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (10.3-2021.10)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../LCD/lvgl/lvgl-v8.3/src/draw/nxp/pxp/lv_draw_pxp.c \
../LCD/lvgl/lvgl-v8.3/src/draw/nxp/pxp/lv_draw_pxp_blend.c \
../LCD/lvgl/lvgl-v8.3/src/draw/nxp/pxp/lv_gpu_nxp_pxp.c \
../LCD/lvgl/lvgl-v8.3/src/draw/nxp/pxp/lv_gpu_nxp_pxp_osa.c 

OBJS += \
./LCD/lvgl/lvgl-v8.3/src/draw/nxp/pxp/lv_draw_pxp.o \
./LCD/lvgl/lvgl-v8.3/src/draw/nxp/pxp/lv_draw_pxp_blend.o \
./LCD/lvgl/lvgl-v8.3/src/draw/nxp/pxp/lv_gpu_nxp_pxp.o \
./LCD/lvgl/lvgl-v8.3/src/draw/nxp/pxp/lv_gpu_nxp_pxp_osa.o 

C_DEPS += \
./LCD/lvgl/lvgl-v8.3/src/draw/nxp/pxp/lv_draw_pxp.d \
./LCD/lvgl/lvgl-v8.3/src/draw/nxp/pxp/lv_draw_pxp_blend.d \
./LCD/lvgl/lvgl-v8.3/src/draw/nxp/pxp/lv_gpu_nxp_pxp.d \
./LCD/lvgl/lvgl-v8.3/src/draw/nxp/pxp/lv_gpu_nxp_pxp_osa.d 


# Each subdirectory must supply rules for building sources it contributes
LCD/lvgl/lvgl-v8.3/src/draw/nxp/pxp/%.o LCD/lvgl/lvgl-v8.3/src/draw/nxp/pxp/%.su LCD/lvgl/lvgl-v8.3/src/draw/nxp/pxp/%.cyclo: ../LCD/lvgl/lvgl-v8.3/src/draw/nxp/pxp/%.c LCD/lvgl/lvgl-v8.3/src/draw/nxp/pxp/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m3 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F103xE -c -I../Core/Inc -I../Drivers/STM32F1xx_HAL_Driver/Inc -I../Drivers/STM32F1xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F1xx/Include -I../Drivers/CMSIS/Include -I"/home/jamesyoung/Documents/School/ELEC3300-Project/Project/LCD" -I"/home/jamesyoung/Documents/School/ELEC3300-Project/Project/ESP_Driver" -O1 -ffunction-sections -fdata-sections -Wall -fdata-sections -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"

clean: clean-LCD-2f-lvgl-2f-lvgl-2d-v8-2e-3-2f-src-2f-draw-2f-nxp-2f-pxp

clean-LCD-2f-lvgl-2f-lvgl-2d-v8-2e-3-2f-src-2f-draw-2f-nxp-2f-pxp:
	-$(RM) ./LCD/lvgl/lvgl-v8.3/src/draw/nxp/pxp/lv_draw_pxp.cyclo ./LCD/lvgl/lvgl-v8.3/src/draw/nxp/pxp/lv_draw_pxp.d ./LCD/lvgl/lvgl-v8.3/src/draw/nxp/pxp/lv_draw_pxp.o ./LCD/lvgl/lvgl-v8.3/src/draw/nxp/pxp/lv_draw_pxp.su ./LCD/lvgl/lvgl-v8.3/src/draw/nxp/pxp/lv_draw_pxp_blend.cyclo ./LCD/lvgl/lvgl-v8.3/src/draw/nxp/pxp/lv_draw_pxp_blend.d ./LCD/lvgl/lvgl-v8.3/src/draw/nxp/pxp/lv_draw_pxp_blend.o ./LCD/lvgl/lvgl-v8.3/src/draw/nxp/pxp/lv_draw_pxp_blend.su ./LCD/lvgl/lvgl-v8.3/src/draw/nxp/pxp/lv_gpu_nxp_pxp.cyclo ./LCD/lvgl/lvgl-v8.3/src/draw/nxp/pxp/lv_gpu_nxp_pxp.d ./LCD/lvgl/lvgl-v8.3/src/draw/nxp/pxp/lv_gpu_nxp_pxp.o ./LCD/lvgl/lvgl-v8.3/src/draw/nxp/pxp/lv_gpu_nxp_pxp.su ./LCD/lvgl/lvgl-v8.3/src/draw/nxp/pxp/lv_gpu_nxp_pxp_osa.cyclo ./LCD/lvgl/lvgl-v8.3/src/draw/nxp/pxp/lv_gpu_nxp_pxp_osa.d ./LCD/lvgl/lvgl-v8.3/src/draw/nxp/pxp/lv_gpu_nxp_pxp_osa.o ./LCD/lvgl/lvgl-v8.3/src/draw/nxp/pxp/lv_gpu_nxp_pxp_osa.su

.PHONY: clean-LCD-2f-lvgl-2f-lvgl-2d-v8-2e-3-2f-src-2f-draw-2f-nxp-2f-pxp

