################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (10.3-2021.10)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../LCD/lvgl/lvgl-v8.3/src/extra/libs/fsdrv/lv_fs_fatfs.c \
../LCD/lvgl/lvgl-v8.3/src/extra/libs/fsdrv/lv_fs_posix.c \
../LCD/lvgl/lvgl-v8.3/src/extra/libs/fsdrv/lv_fs_stdio.c \
../LCD/lvgl/lvgl-v8.3/src/extra/libs/fsdrv/lv_fs_win32.c 

OBJS += \
./LCD/lvgl/lvgl-v8.3/src/extra/libs/fsdrv/lv_fs_fatfs.o \
./LCD/lvgl/lvgl-v8.3/src/extra/libs/fsdrv/lv_fs_posix.o \
./LCD/lvgl/lvgl-v8.3/src/extra/libs/fsdrv/lv_fs_stdio.o \
./LCD/lvgl/lvgl-v8.3/src/extra/libs/fsdrv/lv_fs_win32.o 

C_DEPS += \
./LCD/lvgl/lvgl-v8.3/src/extra/libs/fsdrv/lv_fs_fatfs.d \
./LCD/lvgl/lvgl-v8.3/src/extra/libs/fsdrv/lv_fs_posix.d \
./LCD/lvgl/lvgl-v8.3/src/extra/libs/fsdrv/lv_fs_stdio.d \
./LCD/lvgl/lvgl-v8.3/src/extra/libs/fsdrv/lv_fs_win32.d 


# Each subdirectory must supply rules for building sources it contributes
LCD/lvgl/lvgl-v8.3/src/extra/libs/fsdrv/%.o LCD/lvgl/lvgl-v8.3/src/extra/libs/fsdrv/%.su: ../LCD/lvgl/lvgl-v8.3/src/extra/libs/fsdrv/%.c LCD/lvgl/lvgl-v8.3/src/extra/libs/fsdrv/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m3 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F103xE -c -I../Core/Inc -I../Drivers/STM32F1xx_HAL_Driver/Inc -I../Drivers/STM32F1xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F1xx/Include -I../Drivers/CMSIS/Include -I"/home/jamesyoung/Documents/School/ELEC3300-Project/Project/LCD" -O1 -ffunction-sections -fdata-sections -Wall -fdata-sections -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"

clean: clean-LCD-2f-lvgl-2f-lvgl-2d-v8-2e-3-2f-src-2f-extra-2f-libs-2f-fsdrv

clean-LCD-2f-lvgl-2f-lvgl-2d-v8-2e-3-2f-src-2f-extra-2f-libs-2f-fsdrv:
	-$(RM) ./LCD/lvgl/lvgl-v8.3/src/extra/libs/fsdrv/lv_fs_fatfs.d ./LCD/lvgl/lvgl-v8.3/src/extra/libs/fsdrv/lv_fs_fatfs.o ./LCD/lvgl/lvgl-v8.3/src/extra/libs/fsdrv/lv_fs_fatfs.su ./LCD/lvgl/lvgl-v8.3/src/extra/libs/fsdrv/lv_fs_posix.d ./LCD/lvgl/lvgl-v8.3/src/extra/libs/fsdrv/lv_fs_posix.o ./LCD/lvgl/lvgl-v8.3/src/extra/libs/fsdrv/lv_fs_posix.su ./LCD/lvgl/lvgl-v8.3/src/extra/libs/fsdrv/lv_fs_stdio.d ./LCD/lvgl/lvgl-v8.3/src/extra/libs/fsdrv/lv_fs_stdio.o ./LCD/lvgl/lvgl-v8.3/src/extra/libs/fsdrv/lv_fs_stdio.su ./LCD/lvgl/lvgl-v8.3/src/extra/libs/fsdrv/lv_fs_win32.d ./LCD/lvgl/lvgl-v8.3/src/extra/libs/fsdrv/lv_fs_win32.o ./LCD/lvgl/lvgl-v8.3/src/extra/libs/fsdrv/lv_fs_win32.su

.PHONY: clean-LCD-2f-lvgl-2f-lvgl-2d-v8-2e-3-2f-src-2f-extra-2f-libs-2f-fsdrv

