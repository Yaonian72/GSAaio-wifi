# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.19

# compile CXX with /Users/yzy/.platformio/packages/toolchain-gccarmnoneeabi/bin/arm-none-eabi-g++
CXX_DEFINES = 

CXX_INCLUDES = -I/Users/yzy/CLionProjects/GSAaio-wifi/include -I/Users/yzy/CLionProjects/GSAaio-wifi/src -I/Users/yzy/CLionProjects/GSAaio-wifi/lib/protoc -I/Users/yzy/CLionProjects/GSAaio-wifi/lib/AIOapp -I/Users/yzy/.platformio/packages/framework-arduinoststm32/libraries/SoftwareSerial/src -I/Users/yzy/CLionProjects/GSAaio-wifi/lib/SensorBoard -I/Users/yzy/CLionProjects/GSAaio-wifi/lib/FlowController -I/Users/yzy/CLionProjects/GSAaio-wifi/lib/actuator -I"/Users/yzy/CLionProjects/GSAaio-wifi/.pio/libdeps/adafruit_feather_f405/Adafruit ADS1X15" -I"/Users/yzy/CLionProjects/GSAaio-wifi/.pio/libdeps/adafruit_feather_f405/Adafruit BusIO" -I/Users/yzy/.platformio/packages/framework-arduinoststm32/libraries/SPI/src -I/Users/yzy/.platformio/packages/framework-arduinoststm32/libraries/Wire/src -I/Users/yzy/CLionProjects/GSAaio-wifi/.pio/libdeps/adafruit_feather_f405/PID -I/Users/yzy/CLionProjects/GSAaio-wifi/.pio/libdeps/adafruit_feather_f405/ELClient -I/Users/yzy/.platformio/packages/framework-arduinoststm32/cores/arduino/avr -I/Users/yzy/.platformio/packages/framework-arduinoststm32/cores/arduino/stm32 -I/Users/yzy/.platformio/packages/framework-arduinoststm32/cores/arduino/stm32/LL -I/Users/yzy/.platformio/packages/framework-arduinoststm32/cores/arduino/stm32/usb -I/Users/yzy/.platformio/packages/framework-arduinoststm32/cores/arduino/stm32/OpenAMP -I/Users/yzy/.platformio/packages/framework-arduinoststm32/cores/arduino/stm32/usb/hid -I/Users/yzy/.platformio/packages/framework-arduinoststm32/cores/arduino/stm32/usb/cdc -I/Users/yzy/.platformio/packages/framework-arduinoststm32/system/Drivers/STM32F4xx_HAL_Driver/Inc -I/Users/yzy/.platformio/packages/framework-arduinoststm32/system/Drivers/STM32F4xx_HAL_Driver/Src -I/Users/yzy/.platformio/packages/framework-arduinoststm32/system/STM32F4xx -I/Users/yzy/.platformio/packages/framework-arduinoststm32/system/Middlewares/ST/STM32_USB_Device_Library/Core/Inc -I/Users/yzy/.platformio/packages/framework-arduinoststm32/system/Middlewares/ST/STM32_USB_Device_Library/Core/Src -I/Users/yzy/.platformio/packages/framework-arduinoststm32/system/Middlewares/OpenAMP -I/Users/yzy/.platformio/packages/framework-arduinoststm32/system/Middlewares/OpenAMP/open-amp/lib/include -I/Users/yzy/.platformio/packages/framework-arduinoststm32/system/Middlewares/OpenAMP/libmetal/lib/include -I/Users/yzy/.platformio/packages/framework-arduinoststm32/system/Middlewares/OpenAMP/virtual_driver -I/Users/yzy/.platformio/packages/framework-cmsis/CMSIS/Core/Include -I/Users/yzy/.platformio/packages/framework-arduinoststm32/system/Drivers/CMSIS/Device/ST/STM32F4xx/Include -I/Users/yzy/.platformio/packages/framework-arduinoststm32/system/Drivers/CMSIS/Device/ST/STM32F4xx/Source/Templates/gcc -I/Users/yzy/.platformio/packages/framework-cmsis/CMSIS/DSP/Include -I/Users/yzy/.platformio/packages/framework-arduinoststm32/cores/arduino -I/Users/yzy/.platformio/packages/framework-arduinoststm32/variants/FEATHER_F405 -I/Users/yzy/CLionProjects/GSAaio-wifi/.pio/libdeps/adafruit_feather_f405/ELClient@src-e2c0ec61fbd0b994ec6fe5cedef0a859 -I/Users/yzy/.platformio/packages/framework-arduinoststm32/libraries/CMSIS_DSP/src -I/Users/yzy/.platformio/packages/framework-arduinoststm32/libraries/EEPROM/src -I/Users/yzy/.platformio/packages/framework-arduinoststm32/libraries/IWatchdog/src -I/Users/yzy/.platformio/packages/framework-arduinoststm32/libraries/Keyboard/src -I/Users/yzy/.platformio/packages/framework-arduinoststm32/libraries/Mouse/src -I/Users/yzy/.platformio/packages/framework-arduinoststm32/libraries/Servo/src -I/Users/yzy/.platformio/packages/framework-arduinoststm32/libraries/SrcWrapper/src -I/Users/yzy/.platformio/packages/toolchain-gccarmnoneeabi/arm-none-eabi/include/c++/9.2.1 -I/Users/yzy/.platformio/packages/toolchain-gccarmnoneeabi/arm-none-eabi/include/c++/9.2.1/arm-none-eabi -I/Users/yzy/.platformio/packages/toolchain-gccarmnoneeabi/lib/gcc/arm-none-eabi/9.2.1/include -I/Users/yzy/.platformio/packages/toolchain-gccarmnoneeabi/lib/gcc/arm-none-eabi/9.2.1/include-fixed -I/Users/yzy/.platformio/packages/toolchain-gccarmnoneeabi/arm-none-eabi/include

CXX_FLAGS = -std=gnu++14 -fno-threadsafe-statics -fno-rtti -fno-exceptions -fno-use-cxa-atexit -mfpu=fpv4-sp-d16 -mfloat-abi=hard -Os -mcpu=cortex-m4 -mthumb -ffunction-sections -fdata-sections -Wall -nostdlib --param max-inline-insns-single=500   -D'PLATFORMIO=50101' -D'STM32F405xx' -D'USBCON' -D'USBD_USE_CDC' -D'ENABLE_USB_SERIAL' -D'PIO_FRAMEWORK_ARDUINO_ENABLE_CDC' -D'PIO_FRAMEWORK_ARDUINO_USB_FULLMODE' -D'STM32F4xx' -D'ARDUINO=10808' -D'ARDUINO_ARCH_STM32' -D'ARDUINO_ADAFRUIT_FEATHER_F405' -D'BOARD_NAME="ADAFRUIT_FEATHER_F405"' -D'HAL_UART_MODULE_ENABLED' -D'USBD_USE_CDC' -D'HAL_PCD_MODULE_ENABLED' -std=gnu++14
