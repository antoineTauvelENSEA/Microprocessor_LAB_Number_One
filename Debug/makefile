################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (12.3.rel1)
################################################################################

-include ../makefile.init

RM := rm -rf

# All of the sources participating in the build are defined here
-include sources.mk
-include LAB_Driver/Task/subdir.mk
-include LAB_Driver/OLED_Display/subdir.mk
-include LAB_Driver/LED/subdir.mk
-include LAB_Driver/Button/subdir.mk
-include Drivers/STM32L4xx_HAL_Driver/Src/subdir.mk
-include Core/Startup/subdir.mk
-include Core/Src/subdir.mk
-include objects.mk

ifneq ($(MAKECMDGOALS),clean)
ifneq ($(strip $(S_DEPS)),)
-include $(S_DEPS)
endif
ifneq ($(strip $(S_UPPER_DEPS)),)
-include $(S_UPPER_DEPS)
endif
ifneq ($(strip $(C_DEPS)),)
-include $(C_DEPS)
endif
endif

-include ../makefile.defs

OPTIONAL_TOOL_DEPS := \
$(wildcard ../makefile.defs) \
$(wildcard ../makefile.init) \
$(wildcard ../makefile.targets) \


BUILD_ARTIFACT_NAME := Microprocessor_LAB_Number_One_Chenillard
BUILD_ARTIFACT_EXTENSION := elf
BUILD_ARTIFACT_PREFIX :=
BUILD_ARTIFACT := $(BUILD_ARTIFACT_PREFIX)$(BUILD_ARTIFACT_NAME)$(if $(BUILD_ARTIFACT_EXTENSION),.$(BUILD_ARTIFACT_EXTENSION),)

# Add inputs and outputs from these tool invocations to the build variables 
EXECUTABLES += \
Microprocessor_LAB_Number_One_Chenillard.elf \

MAP_FILES += \
Microprocessor_LAB_Number_One_Chenillard.map \

SIZE_OUTPUT += \
default.size.stdout \

OBJDUMP_LIST += \
Microprocessor_LAB_Number_One_Chenillard.list \


# All Target
all: main-build

# Main-build Target
main-build: Microprocessor_LAB_Number_One_Chenillard.elf secondary-outputs

# Tool invocations
Microprocessor_LAB_Number_One_Chenillard.elf Microprocessor_LAB_Number_One_Chenillard.map: $(OBJS) $(USER_OBJS) C:\Users\antotauv\STM32CubeIDE\workspace_1.12.0\Microprocessor_LAB_Number_One\STM32L476RGTX_FLASH.ld makefile objects.list $(OPTIONAL_TOOL_DEPS)
	arm-none-eabi-gcc -o "Microprocessor_LAB_Number_One_Chenillard.elf" @"objects.list" $(USER_OBJS) $(LIBS) -mcpu=cortex-m4 -T"C:\Users\antotauv\STM32CubeIDE\workspace_1.12.0\Microprocessor_LAB_Number_One\STM32L476RGTX_FLASH.ld" --specs=nosys.specs -Wl,-Map="Microprocessor_LAB_Number_One_Chenillard.map" -Wl,--gc-sections -static --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -Wl,--start-group -lc -lm -Wl,--end-group
	@echo 'Finished building target: $@'
	@echo ' '

default.size.stdout: $(EXECUTABLES) makefile objects.list $(OPTIONAL_TOOL_DEPS)
	arm-none-eabi-size  $(EXECUTABLES)
	@echo 'Finished building: $@'
	@echo ' '

Microprocessor_LAB_Number_One_Chenillard.list: $(EXECUTABLES) makefile objects.list $(OPTIONAL_TOOL_DEPS)
	arm-none-eabi-objdump -h -S $(EXECUTABLES) > "Microprocessor_LAB_Number_One_Chenillard.list"
	@echo 'Finished building: $@'
	@echo ' '

# Other Targets
clean:
	-$(RM) Microprocessor_LAB_Number_One_Chenillard.elf Microprocessor_LAB_Number_One_Chenillard.list Microprocessor_LAB_Number_One_Chenillard.map default.size.stdout
	-@echo ' '

secondary-outputs: $(SIZE_OUTPUT) $(OBJDUMP_LIST)

fail-specified-linker-script-missing:
	@echo 'Error: Cannot find the specified linker script. Check the linker settings in the build configuration.'
	@exit 2

warn-no-linker-script-specified:
	@echo 'Warning: No linker script specified. Check the linker settings in the build configuration.'

.PHONY: all clean dependents main-build fail-specified-linker-script-missing warn-no-linker-script-specified

-include ../makefile.targets
