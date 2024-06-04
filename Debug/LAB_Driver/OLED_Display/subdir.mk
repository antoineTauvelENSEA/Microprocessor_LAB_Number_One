################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (12.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../LAB_Driver/OLED_Display/fonts.c \
../LAB_Driver/OLED_Display/ssd1315.c \
../LAB_Driver/OLED_Display/ssd1315_physical_layer_i2c.c 

OBJS += \
./LAB_Driver/OLED_Display/fonts.o \
./LAB_Driver/OLED_Display/ssd1315.o \
./LAB_Driver/OLED_Display/ssd1315_physical_layer_i2c.o 

C_DEPS += \
./LAB_Driver/OLED_Display/fonts.d \
./LAB_Driver/OLED_Display/ssd1315.d \
./LAB_Driver/OLED_Display/ssd1315_physical_layer_i2c.d 


# Each subdirectory must supply rules for building sources it contributes
LAB_Driver/OLED_Display/%.o LAB_Driver/OLED_Display/%.su LAB_Driver/OLED_Display/%.cyclo: ../LAB_Driver/OLED_Display/%.c LAB_Driver/OLED_Display/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32L476xx -c -I../Core/Inc -I../Drivers/STM32L4xx_HAL_Driver/Inc -I../Drivers/STM32L4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32L4xx/Include -I../Drivers/CMSIS/Include -I../LAB_Driver/Inc -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-LAB_Driver-2f-OLED_Display

clean-LAB_Driver-2f-OLED_Display:
	-$(RM) ./LAB_Driver/OLED_Display/fonts.cyclo ./LAB_Driver/OLED_Display/fonts.d ./LAB_Driver/OLED_Display/fonts.o ./LAB_Driver/OLED_Display/fonts.su ./LAB_Driver/OLED_Display/ssd1315.cyclo ./LAB_Driver/OLED_Display/ssd1315.d ./LAB_Driver/OLED_Display/ssd1315.o ./LAB_Driver/OLED_Display/ssd1315.su ./LAB_Driver/OLED_Display/ssd1315_physical_layer_i2c.cyclo ./LAB_Driver/OLED_Display/ssd1315_physical_layer_i2c.d ./LAB_Driver/OLED_Display/ssd1315_physical_layer_i2c.o ./LAB_Driver/OLED_Display/ssd1315_physical_layer_i2c.su

.PHONY: clean-LAB_Driver-2f-OLED_Display

