################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Drivers/i2cspm.c \
../Drivers/rtcdriver.c \
../Drivers/si7013.c \
../Drivers/sleep.c 

CPP_SRCS += \
../Drivers/BMP280.cpp 

OBJS += \
./Drivers/BMP280.o \
./Drivers/i2cspm.o \
./Drivers/rtcdriver.o \
./Drivers/si7013.o \
./Drivers/sleep.o 

C_DEPS += \
./Drivers/i2cspm.d \
./Drivers/rtcdriver.d \
./Drivers/si7013.d \
./Drivers/sleep.d 

CPP_DEPS += \
./Drivers/BMP280.d 


# Each subdirectory must supply rules for building sources it contributes
Drivers/BMP280.o: ../Drivers/BMP280.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: GNU ARM C++ Compiler'
	arm-none-eabi-g++ -g3 -gdwarf-2 -mcpu=cortex-m3 -mthumb '-DHARDWARE_VERSION_1_0=1' '-DCUSTOM_BOARD=1' '-DEFM32TG108F32=1' -I"T:/SiliconLabs/SimplicityStudio/v4/developer/sdks/exx32/v5.0.0.0//platform/CMSIS/Include" -I"C:\Users\Colton\SimplicityStudio\v4_workspace\ProjectTempSensorCpp\Drivers" -I"C:\Users\Colton\SimplicityStudio\v4_workspace\ProjectTempSensorCpp\RF24" -I"T:/SiliconLabs/SimplicityStudio/v4/developer/sdks/exx32/v5.0.0.0//hardware/kit/common/bsp" -I"T:/SiliconLabs/SimplicityStudio/v4/developer/sdks/exx32/v5.0.0.0//platform/emlib/inc" -I"T:/SiliconLabs/SimplicityStudio/v4/developer/sdks/exx32/v5.0.0.0//hardware/kit/common/drivers" -I"T:/SiliconLabs/SimplicityStudio/v4/developer/sdks/exx32/v5.0.0.0//platform/Device/SiliconLabs/EFM32TG/Include" -Os -Wall -c -fmessage-length=0 -v -mno-sched-prolog -fno-builtin -ffunction-sections -fdata-sections -MMD -MP -MF"Drivers/BMP280.d" -MT"Drivers/BMP280.o" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

Drivers/i2cspm.o: ../Drivers/i2cspm.c
	@echo 'Building file: $<'
	@echo 'Invoking: GNU ARM C Compiler'
	arm-none-eabi-gcc -g3 -gdwarf-2 -mcpu=cortex-m3 -mthumb -std=c99 '-DEFM32TG108F32=1' '-DCUSTOM_BOARD=1' '-DHARDWARE_VERSION_1_0=1' '-DRTCDRV_USE_LFRCO=1' -I"T:/SiliconLabs/SimplicityStudio/v4/developer/sdks/exx32/v5.0.0.0//platform/CMSIS/Include" -I"C:\Users\Colton\SimplicityStudio\v4_workspace\ProjectTempSensorCpp\Drivers" -I"C:\Users\Colton\SimplicityStudio\v4_workspace\ProjectTempSensorCpp\RF24" -I"T:/SiliconLabs/SimplicityStudio/v4/developer/sdks/exx32/v5.0.0.0//hardware/kit/common/bsp" -I"T:/SiliconLabs/SimplicityStudio/v4/developer/sdks/exx32/v5.0.0.0//platform/emlib/inc" -I"T:/SiliconLabs/SimplicityStudio/v4/developer/sdks/exx32/v5.0.0.0//hardware/kit/common/drivers" -I"T:/SiliconLabs/SimplicityStudio/v4/developer/sdks/exx32/v5.0.0.0//platform/Device/SiliconLabs/EFM32TG/Include" -O0 -Wall -c -fmessage-length=0 -v -mno-sched-prolog -fno-builtin -ffunction-sections -fdata-sections -MMD -MP -MF"Drivers/i2cspm.d" -MT"Drivers/i2cspm.o" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

Drivers/rtcdriver.o: ../Drivers/rtcdriver.c
	@echo 'Building file: $<'
	@echo 'Invoking: GNU ARM C Compiler'
	arm-none-eabi-gcc -g3 -gdwarf-2 -mcpu=cortex-m3 -mthumb -std=c99 '-DEFM32TG108F32=1' '-DCUSTOM_BOARD=1' '-DHARDWARE_VERSION_1_0=1' '-DRTCDRV_USE_LFRCO=1' -I"T:/SiliconLabs/SimplicityStudio/v4/developer/sdks/exx32/v5.0.0.0//platform/CMSIS/Include" -I"C:\Users\Colton\SimplicityStudio\v4_workspace\ProjectTempSensorCpp\Drivers" -I"C:\Users\Colton\SimplicityStudio\v4_workspace\ProjectTempSensorCpp\RF24" -I"T:/SiliconLabs/SimplicityStudio/v4/developer/sdks/exx32/v5.0.0.0//hardware/kit/common/bsp" -I"T:/SiliconLabs/SimplicityStudio/v4/developer/sdks/exx32/v5.0.0.0//platform/emlib/inc" -I"T:/SiliconLabs/SimplicityStudio/v4/developer/sdks/exx32/v5.0.0.0//hardware/kit/common/drivers" -I"T:/SiliconLabs/SimplicityStudio/v4/developer/sdks/exx32/v5.0.0.0//platform/Device/SiliconLabs/EFM32TG/Include" -O0 -Wall -c -fmessage-length=0 -v -mno-sched-prolog -fno-builtin -ffunction-sections -fdata-sections -MMD -MP -MF"Drivers/rtcdriver.d" -MT"Drivers/rtcdriver.o" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

Drivers/si7013.o: ../Drivers/si7013.c
	@echo 'Building file: $<'
	@echo 'Invoking: GNU ARM C Compiler'
	arm-none-eabi-gcc -g3 -gdwarf-2 -mcpu=cortex-m3 -mthumb -std=c99 '-DEFM32TG108F32=1' '-DCUSTOM_BOARD=1' '-DHARDWARE_VERSION_1_0=1' '-DRTCDRV_USE_LFRCO=1' -I"T:/SiliconLabs/SimplicityStudio/v4/developer/sdks/exx32/v5.0.0.0//platform/CMSIS/Include" -I"C:\Users\Colton\SimplicityStudio\v4_workspace\ProjectTempSensorCpp\Drivers" -I"C:\Users\Colton\SimplicityStudio\v4_workspace\ProjectTempSensorCpp\RF24" -I"T:/SiliconLabs/SimplicityStudio/v4/developer/sdks/exx32/v5.0.0.0//hardware/kit/common/bsp" -I"T:/SiliconLabs/SimplicityStudio/v4/developer/sdks/exx32/v5.0.0.0//platform/emlib/inc" -I"T:/SiliconLabs/SimplicityStudio/v4/developer/sdks/exx32/v5.0.0.0//hardware/kit/common/drivers" -I"T:/SiliconLabs/SimplicityStudio/v4/developer/sdks/exx32/v5.0.0.0//platform/Device/SiliconLabs/EFM32TG/Include" -O0 -Wall -c -fmessage-length=0 -v -mno-sched-prolog -fno-builtin -ffunction-sections -fdata-sections -MMD -MP -MF"Drivers/si7013.d" -MT"Drivers/si7013.o" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

Drivers/sleep.o: ../Drivers/sleep.c
	@echo 'Building file: $<'
	@echo 'Invoking: GNU ARM C Compiler'
	arm-none-eabi-gcc -g3 -gdwarf-2 -mcpu=cortex-m3 -mthumb -std=c99 '-DEFM32TG108F32=1' '-DCUSTOM_BOARD=1' '-DHARDWARE_VERSION_1_0=1' '-DRTCDRV_USE_LFRCO=1' -I"T:/SiliconLabs/SimplicityStudio/v4/developer/sdks/exx32/v5.0.0.0//platform/CMSIS/Include" -I"C:\Users\Colton\SimplicityStudio\v4_workspace\ProjectTempSensorCpp\Drivers" -I"C:\Users\Colton\SimplicityStudio\v4_workspace\ProjectTempSensorCpp\RF24" -I"T:/SiliconLabs/SimplicityStudio/v4/developer/sdks/exx32/v5.0.0.0//hardware/kit/common/bsp" -I"T:/SiliconLabs/SimplicityStudio/v4/developer/sdks/exx32/v5.0.0.0//platform/emlib/inc" -I"T:/SiliconLabs/SimplicityStudio/v4/developer/sdks/exx32/v5.0.0.0//hardware/kit/common/drivers" -I"T:/SiliconLabs/SimplicityStudio/v4/developer/sdks/exx32/v5.0.0.0//platform/Device/SiliconLabs/EFM32TG/Include" -O0 -Wall -c -fmessage-length=0 -v -mno-sched-prolog -fno-builtin -ffunction-sections -fdata-sections -MMD -MP -MF"Drivers/sleep.d" -MT"Drivers/sleep.o" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


