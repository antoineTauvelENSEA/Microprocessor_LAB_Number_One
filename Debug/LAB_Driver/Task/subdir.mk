################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (12.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../LAB_Driver/Task/task.c 

OBJS += \
./LAB_Driver/Task/task.o 

C_DEPS += \
./LAB_Driver/Task/task.d 


# Each subdirectory must supply rules for building sources it contributes
LAB_Driver/Task/%.o LAB_Driver/Task/%.su LAB_Driver/Task/%.cyclo: ../LAB_Driver/Task/%.c LAB_Driver/Task/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32L476xx -c -I../Core/Inc -I../Drivers/STM32L4xx_HAL_Driver/Inc -I../Drivers/STM32L4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32L4xx/Include -I../Drivers/CMSIS/Include -I../LAB_Driver/Inc -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-LAB_Driver-2f-Task

clean-LAB_Driver-2f-Task:
	-$(RM) ./LAB_Driver/Task/task.cyclo ./LAB_Driver/Task/task.d ./LAB_Driver/Task/task.o ./LAB_Driver/Task/task.su

.PHONY: clean-LAB_Driver-2f-Task

