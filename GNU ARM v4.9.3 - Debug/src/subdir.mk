################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../src/minimalist_main.cpp 

OBJS += \
./src/minimalist_main.o 

CPP_DEPS += \
./src/minimalist_main.d 


# Each subdirectory must supply rules for building sources it contributes
src/minimalist_main.o: ../src/minimalist_main.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: GNU ARM C++ Compiler'
	arm-none-eabi-g++ -g3 -gdwarf-2 -mcpu=cortex-m3 -mthumb '-DHARDWARE_VERSION_2_0=1' '-DCUSTOM_BOARD=1' '-DEFM32TG108F32=1' -I"T:/SiliconLabs/SimplicityStudio/v4/developer/sdks/exx32/v5.0.0.0//platform/CMSIS/Include" -I"C:\Users\Colton\SimplicityStudio\v4_workspace\ProjectTempSensorCpp\Drivers" -I"C:\Users\Colton\SimplicityStudio\v4_workspace\ProjectTempSensorCpp\RF24" -I"T:/SiliconLabs/SimplicityStudio/v4/developer/sdks/exx32/v5.0.0.0//hardware/kit/common/bsp" -I"T:/SiliconLabs/SimplicityStudio/v4/developer/sdks/exx32/v5.0.0.0//platform/emlib/inc" -I"T:/SiliconLabs/SimplicityStudio/v4/developer/sdks/exx32/v5.0.0.0//hardware/kit/common/drivers" -I"T:/SiliconLabs/SimplicityStudio/v4/developer/sdks/exx32/v5.0.0.0//platform/Device/SiliconLabs/EFM32TG/Include" -Os -Wall -c -fmessage-length=0 -v -mno-sched-prolog -fno-builtin -ffunction-sections -fdata-sections -MMD -MP -MF"src/minimalist_main.d" -MT"src/minimalist_main.o" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


