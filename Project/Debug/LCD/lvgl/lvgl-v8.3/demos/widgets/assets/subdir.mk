################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (10.3-2021.10)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../LCD/lvgl/lvgl-v8.3/demos/widgets/assets/img_clothes.c \
../LCD/lvgl/lvgl-v8.3/demos/widgets/assets/img_demo_widgets_avatar.c \
../LCD/lvgl/lvgl-v8.3/demos/widgets/assets/img_lvgl_logo.c 

OBJS += \
./LCD/lvgl/lvgl-v8.3/demos/widgets/assets/img_clothes.o \
./LCD/lvgl/lvgl-v8.3/demos/widgets/assets/img_demo_widgets_avatar.o \
./LCD/lvgl/lvgl-v8.3/demos/widgets/assets/img_lvgl_logo.o 

C_DEPS += \
./LCD/lvgl/lvgl-v8.3/demos/widgets/assets/img_clothes.d \
./LCD/lvgl/lvgl-v8.3/demos/widgets/assets/img_demo_widgets_avatar.d \
./LCD/lvgl/lvgl-v8.3/demos/widgets/assets/img_lvgl_logo.d 


# Each subdirectory must supply rules for building sources it contributes
LCD/lvgl/lvgl-v8.3/demos/widgets/assets/%.o LCD/lvgl/lvgl-v8.3/demos/widgets/assets/%.su LCD/lvgl/lvgl-v8.3/demos/widgets/assets/%.cyclo: ../LCD/lvgl/lvgl-v8.3/demos/widgets/assets/%.c LCD/lvgl/lvgl-v8.3/demos/widgets/assets/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m3 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F103xE -c -I../Core/Inc -I../Drivers/STM32F1xx_HAL_Driver/Inc -I../Drivers/STM32F1xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F1xx/Include -I../Drivers/CMSIS/Include -I"/home/jamesyoung/Documents/School/ELEC3300-Project/Project/LCD" -I"/home/jamesyoung/Documents/School/ELEC3300-Project/Project/ESP_Driver" -O1 -ffunction-sections -fdata-sections -Wall -fdata-sections -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"

clean: clean-LCD-2f-lvgl-2f-lvgl-2d-v8-2e-3-2f-demos-2f-widgets-2f-assets

clean-LCD-2f-lvgl-2f-lvgl-2d-v8-2e-3-2f-demos-2f-widgets-2f-assets:
	-$(RM) ./LCD/lvgl/lvgl-v8.3/demos/widgets/assets/img_clothes.cyclo ./LCD/lvgl/lvgl-v8.3/demos/widgets/assets/img_clothes.d ./LCD/lvgl/lvgl-v8.3/demos/widgets/assets/img_clothes.o ./LCD/lvgl/lvgl-v8.3/demos/widgets/assets/img_clothes.su ./LCD/lvgl/lvgl-v8.3/demos/widgets/assets/img_demo_widgets_avatar.cyclo ./LCD/lvgl/lvgl-v8.3/demos/widgets/assets/img_demo_widgets_avatar.d ./LCD/lvgl/lvgl-v8.3/demos/widgets/assets/img_demo_widgets_avatar.o ./LCD/lvgl/lvgl-v8.3/demos/widgets/assets/img_demo_widgets_avatar.su ./LCD/lvgl/lvgl-v8.3/demos/widgets/assets/img_lvgl_logo.cyclo ./LCD/lvgl/lvgl-v8.3/demos/widgets/assets/img_lvgl_logo.d ./LCD/lvgl/lvgl-v8.3/demos/widgets/assets/img_lvgl_logo.o ./LCD/lvgl/lvgl-v8.3/demos/widgets/assets/img_lvgl_logo.su

.PHONY: clean-LCD-2f-lvgl-2f-lvgl-2d-v8-2e-3-2f-demos-2f-widgets-2f-assets

