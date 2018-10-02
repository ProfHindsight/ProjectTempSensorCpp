################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
T:/SiliconLabs/SimplicityStudio/v4/developer/sdks/exx32/v5.0.0.0/platform/Device/SiliconLabs/EFM32TG/Source/system_efm32tg.c 

S_UPPER_SRCS += \
T:/SiliconLabs/SimplicityStudio/v4/developer/sdks/exx32/v5.0.0.0/platform/Device/SiliconLabs/EFM32TG/Source/GCC/startup_efm32tg.S 

OBJS += \
./CMSIS/EFM32TG/startup_efm32tg.o \
./CMSIS/EFM32TG/system_efm32tg.o 

C_DEPS += \
./CMSIS/EFM32TG/system_efm32tg.d 


# Each subdirectory must supply rules for building sources it contributes
CMSIS/EFM32TG/startup_efm32tg.o: T:/SiliconLabs/SimplicityStudio/v4/developer/sdks/exx32/v5.0.0.0/platform/Device/SiliconLabs/EFM32TG/Source/GCC/startup_efm32tg.S
	@echo 'Building file: $<'
	@echo 'Invoking: GNU ARM Assembler'
	arm-none-eabi-gcc -g3 -gdwarf-2 -mcpu=cortex-m3 -mthumb -c -x assembler-with-cpp -I"T:/SiliconLabs/SimplicityStudio/v4/developer/sdks/exx32/v5.0.0.0//platform/CMSIS/Include" -I"T:/SiliconLabs/SimplicityStudio/v4/developer/sdks/exx32/v5.0.0.0//hardware/kit/common/bsp" -I"T:/SiliconLabs/SimplicityStudio/v4/developer/sdks/exx32/v5.0.0.0//platform/emlib/inc" -I"T:/SiliconLabs/SimplicityStudio/v4/developer/sdks/exx32/v5.0.0.0//hardware/kit/common/drivers" -I"T:/SiliconLabs/SimplicityStudio/v4/developer/sdks/exx32/v5.0.0.0//platform/Device/SiliconLabs/EFM32TG/Include" -I"C:\Users\Colton\SimplicityStudio\v4_workspace\ProjectTempSensorCpp\RF24" -I"C:\Users\Colton\SimplicityStudio\v4_workspace\ProjectTempSensorCpp\Drivers" '-DEFM32TG108F32=1' -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

CMSIS/EFM32TG/system_efm32tg.o: T:/SiliconLabs/SimplicityStudio/v4/developer/sdks/exx32/v5.0.0.0/platform/Device/SiliconLabs/EFM32TG/Source/system_efm32tg.c
	@echo 'Building file: $<'
	@echo 'Invoking: GNU ARM C Compiler'
	arm-none-eabi-gcc -g3 -gdwarf-2 -mcpu=cortex-m3 -mthumb -std=c99 '-DEFM32TG108F32=1' '-DCUSTOM_BOARD=1' '-DHARDWARE_VERSION_1_0=1' '-DRTCDRV_USE_LFRCO=1' -I"T:/SiliconLabs/SimplicityStudio/v4/developer/sdks/exx32/v5.0.0.0//platform/CMSIS/Include" -I"C:\Users\Colton\SimplicityStudio\v4_workspace\ProjectTempSensorCpp\Drivers" -I"C:\Users\Colton\SimplicityStudio\v4_workspace\ProjectTempSensorCpp\RF24" -I"T:/SiliconLabs/SimplicityStudio/v4/developer/sdks/exx32/v5.0.0.0//hardware/kit/common/bsp" -I"T:/SiliconLabs/SimplicityStudio/v4/developer/sdks/exx32/v5.0.0.0//platform/emlib/inc" -I"T:/SiliconLabs/SimplicityStudio/v4/developer/sdks/exx32/v5.0.0.0//hardware/kit/common/drivers" -I"T:/SiliconLabs/SimplicityStudio/v4/developer/sdks/exx32/v5.0.0.0//platform/Device/SiliconLabs/EFM32TG/Include" -O0 -Wall -c -fmessage-length=0 -v -mno-sched-prolog -fno-builtin -ffunction-sections -fdata-sections -MMD -MP -MF"CMSIS/EFM32TG/system_efm32tg.d" -MT"CMSIS/EFM32TG/system_efm32tg.o" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


