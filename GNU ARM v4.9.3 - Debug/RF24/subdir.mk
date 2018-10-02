################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../RF24/ustimer.c 

CPP_SRCS += \
../RF24/HardwareSPI.cpp \
../RF24/RF24.cpp \
../RF24/utilities.cpp 

OBJS += \
./RF24/HardwareSPI.o \
./RF24/RF24.o \
./RF24/ustimer.o \
./RF24/utilities.o 

C_DEPS += \
./RF24/ustimer.d 

CPP_DEPS += \
./RF24/HardwareSPI.d \
./RF24/RF24.d \
./RF24/utilities.d 


# Each subdirectory must supply rules for building sources it contributes
RF24/HardwareSPI.o: ../RF24/HardwareSPI.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: GNU ARM C++ Compiler'
	arm-none-eabi-g++ -g3 -gdwarf-2 -mcpu=cortex-m3 -mthumb '-DHARDWARE_VERSION_1_0=1' '-DCUSTOM_BOARD=1' '-DEFM32TG108F32=1' -I"T:/SiliconLabs/SimplicityStudio/v4/developer/sdks/exx32/v5.0.0.0//platform/CMSIS/Include" -I"C:\Users\Colton\SimplicityStudio\v4_workspace\ProjectTempSensorCpp\Drivers" -I"C:\Users\Colton\SimplicityStudio\v4_workspace\ProjectTempSensorCpp\RF24" -I"T:/SiliconLabs/SimplicityStudio/v4/developer/sdks/exx32/v5.0.0.0//hardware/kit/common/bsp" -I"T:/SiliconLabs/SimplicityStudio/v4/developer/sdks/exx32/v5.0.0.0//platform/emlib/inc" -I"T:/SiliconLabs/SimplicityStudio/v4/developer/sdks/exx32/v5.0.0.0//hardware/kit/common/drivers" -I"T:/SiliconLabs/SimplicityStudio/v4/developer/sdks/exx32/v5.0.0.0//platform/Device/SiliconLabs/EFM32TG/Include" -Os -Wall -c -fmessage-length=0 -v -mno-sched-prolog -fno-builtin -ffunction-sections -fdata-sections -MMD -MP -MF"RF24/HardwareSPI.d" -MT"RF24/HardwareSPI.o" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

RF24/RF24.o: ../RF24/RF24.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: GNU ARM C++ Compiler'
	arm-none-eabi-g++ -g3 -gdwarf-2 -mcpu=cortex-m3 -mthumb '-DHARDWARE_VERSION_1_0=1' '-DCUSTOM_BOARD=1' '-DEFM32TG108F32=1' -I"T:/SiliconLabs/SimplicityStudio/v4/developer/sdks/exx32/v5.0.0.0//platform/CMSIS/Include" -I"C:\Users\Colton\SimplicityStudio\v4_workspace\ProjectTempSensorCpp\Drivers" -I"C:\Users\Colton\SimplicityStudio\v4_workspace\ProjectTempSensorCpp\RF24" -I"T:/SiliconLabs/SimplicityStudio/v4/developer/sdks/exx32/v5.0.0.0//hardware/kit/common/bsp" -I"T:/SiliconLabs/SimplicityStudio/v4/developer/sdks/exx32/v5.0.0.0//platform/emlib/inc" -I"T:/SiliconLabs/SimplicityStudio/v4/developer/sdks/exx32/v5.0.0.0//hardware/kit/common/drivers" -I"T:/SiliconLabs/SimplicityStudio/v4/developer/sdks/exx32/v5.0.0.0//platform/Device/SiliconLabs/EFM32TG/Include" -Os -Wall -c -fmessage-length=0 -v -mno-sched-prolog -fno-builtin -ffunction-sections -fdata-sections -MMD -MP -MF"RF24/RF24.d" -MT"RF24/RF24.o" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

RF24/ustimer.o: ../RF24/ustimer.c
	@echo 'Building file: $<'
	@echo 'Invoking: GNU ARM C Compiler'
	arm-none-eabi-gcc -g3 -gdwarf-2 -mcpu=cortex-m3 -mthumb -std=c99 '-DEFM32TG108F32=1' '-DCUSTOM_BOARD=1' '-DHARDWARE_VERSION_1_0=1' '-DRTCDRV_USE_LFRCO=1' -I"T:/SiliconLabs/SimplicityStudio/v4/developer/sdks/exx32/v5.0.0.0//platform/CMSIS/Include" -I"C:\Users\Colton\SimplicityStudio\v4_workspace\ProjectTempSensorCpp\Drivers" -I"C:\Users\Colton\SimplicityStudio\v4_workspace\ProjectTempSensorCpp\RF24" -I"T:/SiliconLabs/SimplicityStudio/v4/developer/sdks/exx32/v5.0.0.0//hardware/kit/common/bsp" -I"T:/SiliconLabs/SimplicityStudio/v4/developer/sdks/exx32/v5.0.0.0//platform/emlib/inc" -I"T:/SiliconLabs/SimplicityStudio/v4/developer/sdks/exx32/v5.0.0.0//hardware/kit/common/drivers" -I"T:/SiliconLabs/SimplicityStudio/v4/developer/sdks/exx32/v5.0.0.0//platform/Device/SiliconLabs/EFM32TG/Include" -O0 -Wall -c -fmessage-length=0 -v -mno-sched-prolog -fno-builtin -ffunction-sections -fdata-sections -MMD -MP -MF"RF24/ustimer.d" -MT"RF24/ustimer.o" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

RF24/utilities.o: ../RF24/utilities.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: GNU ARM C++ Compiler'
	arm-none-eabi-g++ -g3 -gdwarf-2 -mcpu=cortex-m3 -mthumb '-DHARDWARE_VERSION_1_0=1' '-DCUSTOM_BOARD=1' '-DEFM32TG108F32=1' -I"T:/SiliconLabs/SimplicityStudio/v4/developer/sdks/exx32/v5.0.0.0//platform/CMSIS/Include" -I"C:\Users\Colton\SimplicityStudio\v4_workspace\ProjectTempSensorCpp\Drivers" -I"C:\Users\Colton\SimplicityStudio\v4_workspace\ProjectTempSensorCpp\RF24" -I"T:/SiliconLabs/SimplicityStudio/v4/developer/sdks/exx32/v5.0.0.0//hardware/kit/common/bsp" -I"T:/SiliconLabs/SimplicityStudio/v4/developer/sdks/exx32/v5.0.0.0//platform/emlib/inc" -I"T:/SiliconLabs/SimplicityStudio/v4/developer/sdks/exx32/v5.0.0.0//hardware/kit/common/drivers" -I"T:/SiliconLabs/SimplicityStudio/v4/developer/sdks/exx32/v5.0.0.0//platform/Device/SiliconLabs/EFM32TG/Include" -Os -Wall -c -fmessage-length=0 -v -mno-sched-prolog -fno-builtin -ffunction-sections -fdata-sections -MMD -MP -MF"RF24/utilities.d" -MT"RF24/utilities.o" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


