# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.19

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Disable VCS-based implicit rules.
% : %,v


# Disable VCS-based implicit rules.
% : RCS/%


# Disable VCS-based implicit rules.
% : RCS/%,v


# Disable VCS-based implicit rules.
% : SCCS/s.%


# Disable VCS-based implicit rules.
% : s.%


.SUFFIXES: .hpux_make_needs_suffix_list


# Command-line flag to silence nested $(MAKE).
$(VERBOSE)MAKESILENT = -s

#Suppress display of executed commands.
$(VERBOSE).SILENT:

# A target that is always out of date.
cmake_force:

.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /Applications/CLion.app/Contents/bin/cmake/mac/bin/cmake

# The command to remove a file.
RM = /Applications/CLion.app/Contents/bin/cmake/mac/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/yzy/CLionProjects/GSAaio-wifi

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/yzy/CLionProjects/GSAaio-wifi/cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles/Z_DUMMY_TARGET.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/Z_DUMMY_TARGET.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/Z_DUMMY_TARGET.dir/flags.make

CMakeFiles/Z_DUMMY_TARGET.dir/lib/AIOapp/AIOapp.cpp.obj: CMakeFiles/Z_DUMMY_TARGET.dir/flags.make
CMakeFiles/Z_DUMMY_TARGET.dir/lib/AIOapp/AIOapp.cpp.obj: ../lib/AIOapp/AIOapp.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/yzy/CLionProjects/GSAaio-wifi/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/Z_DUMMY_TARGET.dir/lib/AIOapp/AIOapp.cpp.obj"
	/Users/yzy/.platformio/packages/toolchain-gccarmnoneeabi/bin/arm-none-eabi-g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/Z_DUMMY_TARGET.dir/lib/AIOapp/AIOapp.cpp.obj -c /Users/yzy/CLionProjects/GSAaio-wifi/lib/AIOapp/AIOapp.cpp

CMakeFiles/Z_DUMMY_TARGET.dir/lib/AIOapp/AIOapp.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Z_DUMMY_TARGET.dir/lib/AIOapp/AIOapp.cpp.i"
	/Users/yzy/.platformio/packages/toolchain-gccarmnoneeabi/bin/arm-none-eabi-g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/yzy/CLionProjects/GSAaio-wifi/lib/AIOapp/AIOapp.cpp > CMakeFiles/Z_DUMMY_TARGET.dir/lib/AIOapp/AIOapp.cpp.i

CMakeFiles/Z_DUMMY_TARGET.dir/lib/AIOapp/AIOapp.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Z_DUMMY_TARGET.dir/lib/AIOapp/AIOapp.cpp.s"
	/Users/yzy/.platformio/packages/toolchain-gccarmnoneeabi/bin/arm-none-eabi-g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/yzy/CLionProjects/GSAaio-wifi/lib/AIOapp/AIOapp.cpp -o CMakeFiles/Z_DUMMY_TARGET.dir/lib/AIOapp/AIOapp.cpp.s

CMakeFiles/Z_DUMMY_TARGET.dir/lib/FlowController/FlowController.cpp.obj: CMakeFiles/Z_DUMMY_TARGET.dir/flags.make
CMakeFiles/Z_DUMMY_TARGET.dir/lib/FlowController/FlowController.cpp.obj: ../lib/FlowController/FlowController.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/yzy/CLionProjects/GSAaio-wifi/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/Z_DUMMY_TARGET.dir/lib/FlowController/FlowController.cpp.obj"
	/Users/yzy/.platformio/packages/toolchain-gccarmnoneeabi/bin/arm-none-eabi-g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/Z_DUMMY_TARGET.dir/lib/FlowController/FlowController.cpp.obj -c /Users/yzy/CLionProjects/GSAaio-wifi/lib/FlowController/FlowController.cpp

CMakeFiles/Z_DUMMY_TARGET.dir/lib/FlowController/FlowController.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Z_DUMMY_TARGET.dir/lib/FlowController/FlowController.cpp.i"
	/Users/yzy/.platformio/packages/toolchain-gccarmnoneeabi/bin/arm-none-eabi-g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/yzy/CLionProjects/GSAaio-wifi/lib/FlowController/FlowController.cpp > CMakeFiles/Z_DUMMY_TARGET.dir/lib/FlowController/FlowController.cpp.i

CMakeFiles/Z_DUMMY_TARGET.dir/lib/FlowController/FlowController.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Z_DUMMY_TARGET.dir/lib/FlowController/FlowController.cpp.s"
	/Users/yzy/.platformio/packages/toolchain-gccarmnoneeabi/bin/arm-none-eabi-g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/yzy/CLionProjects/GSAaio-wifi/lib/FlowController/FlowController.cpp -o CMakeFiles/Z_DUMMY_TARGET.dir/lib/FlowController/FlowController.cpp.s

CMakeFiles/Z_DUMMY_TARGET.dir/lib/SensorBoard/SensorBoard.cpp.obj: CMakeFiles/Z_DUMMY_TARGET.dir/flags.make
CMakeFiles/Z_DUMMY_TARGET.dir/lib/SensorBoard/SensorBoard.cpp.obj: ../lib/SensorBoard/SensorBoard.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/yzy/CLionProjects/GSAaio-wifi/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/Z_DUMMY_TARGET.dir/lib/SensorBoard/SensorBoard.cpp.obj"
	/Users/yzy/.platformio/packages/toolchain-gccarmnoneeabi/bin/arm-none-eabi-g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/Z_DUMMY_TARGET.dir/lib/SensorBoard/SensorBoard.cpp.obj -c /Users/yzy/CLionProjects/GSAaio-wifi/lib/SensorBoard/SensorBoard.cpp

CMakeFiles/Z_DUMMY_TARGET.dir/lib/SensorBoard/SensorBoard.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Z_DUMMY_TARGET.dir/lib/SensorBoard/SensorBoard.cpp.i"
	/Users/yzy/.platformio/packages/toolchain-gccarmnoneeabi/bin/arm-none-eabi-g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/yzy/CLionProjects/GSAaio-wifi/lib/SensorBoard/SensorBoard.cpp > CMakeFiles/Z_DUMMY_TARGET.dir/lib/SensorBoard/SensorBoard.cpp.i

CMakeFiles/Z_DUMMY_TARGET.dir/lib/SensorBoard/SensorBoard.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Z_DUMMY_TARGET.dir/lib/SensorBoard/SensorBoard.cpp.s"
	/Users/yzy/.platformio/packages/toolchain-gccarmnoneeabi/bin/arm-none-eabi-g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/yzy/CLionProjects/GSAaio-wifi/lib/SensorBoard/SensorBoard.cpp -o CMakeFiles/Z_DUMMY_TARGET.dir/lib/SensorBoard/SensorBoard.cpp.s

CMakeFiles/Z_DUMMY_TARGET.dir/lib/actuator/Pump.cpp.obj: CMakeFiles/Z_DUMMY_TARGET.dir/flags.make
CMakeFiles/Z_DUMMY_TARGET.dir/lib/actuator/Pump.cpp.obj: ../lib/actuator/Pump.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/yzy/CLionProjects/GSAaio-wifi/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object CMakeFiles/Z_DUMMY_TARGET.dir/lib/actuator/Pump.cpp.obj"
	/Users/yzy/.platformio/packages/toolchain-gccarmnoneeabi/bin/arm-none-eabi-g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/Z_DUMMY_TARGET.dir/lib/actuator/Pump.cpp.obj -c /Users/yzy/CLionProjects/GSAaio-wifi/lib/actuator/Pump.cpp

CMakeFiles/Z_DUMMY_TARGET.dir/lib/actuator/Pump.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Z_DUMMY_TARGET.dir/lib/actuator/Pump.cpp.i"
	/Users/yzy/.platformio/packages/toolchain-gccarmnoneeabi/bin/arm-none-eabi-g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/yzy/CLionProjects/GSAaio-wifi/lib/actuator/Pump.cpp > CMakeFiles/Z_DUMMY_TARGET.dir/lib/actuator/Pump.cpp.i

CMakeFiles/Z_DUMMY_TARGET.dir/lib/actuator/Pump.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Z_DUMMY_TARGET.dir/lib/actuator/Pump.cpp.s"
	/Users/yzy/.platformio/packages/toolchain-gccarmnoneeabi/bin/arm-none-eabi-g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/yzy/CLionProjects/GSAaio-wifi/lib/actuator/Pump.cpp -o CMakeFiles/Z_DUMMY_TARGET.dir/lib/actuator/Pump.cpp.s

CMakeFiles/Z_DUMMY_TARGET.dir/lib/actuator/Valve.cpp.obj: CMakeFiles/Z_DUMMY_TARGET.dir/flags.make
CMakeFiles/Z_DUMMY_TARGET.dir/lib/actuator/Valve.cpp.obj: ../lib/actuator/Valve.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/yzy/CLionProjects/GSAaio-wifi/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building CXX object CMakeFiles/Z_DUMMY_TARGET.dir/lib/actuator/Valve.cpp.obj"
	/Users/yzy/.platformio/packages/toolchain-gccarmnoneeabi/bin/arm-none-eabi-g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/Z_DUMMY_TARGET.dir/lib/actuator/Valve.cpp.obj -c /Users/yzy/CLionProjects/GSAaio-wifi/lib/actuator/Valve.cpp

CMakeFiles/Z_DUMMY_TARGET.dir/lib/actuator/Valve.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Z_DUMMY_TARGET.dir/lib/actuator/Valve.cpp.i"
	/Users/yzy/.platformio/packages/toolchain-gccarmnoneeabi/bin/arm-none-eabi-g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/yzy/CLionProjects/GSAaio-wifi/lib/actuator/Valve.cpp > CMakeFiles/Z_DUMMY_TARGET.dir/lib/actuator/Valve.cpp.i

CMakeFiles/Z_DUMMY_TARGET.dir/lib/actuator/Valve.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Z_DUMMY_TARGET.dir/lib/actuator/Valve.cpp.s"
	/Users/yzy/.platformio/packages/toolchain-gccarmnoneeabi/bin/arm-none-eabi-g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/yzy/CLionProjects/GSAaio-wifi/lib/actuator/Valve.cpp -o CMakeFiles/Z_DUMMY_TARGET.dir/lib/actuator/Valve.cpp.s

CMakeFiles/Z_DUMMY_TARGET.dir/lib/protoc/protoc.cpp.obj: CMakeFiles/Z_DUMMY_TARGET.dir/flags.make
CMakeFiles/Z_DUMMY_TARGET.dir/lib/protoc/protoc.cpp.obj: ../lib/protoc/protoc.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/yzy/CLionProjects/GSAaio-wifi/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building CXX object CMakeFiles/Z_DUMMY_TARGET.dir/lib/protoc/protoc.cpp.obj"
	/Users/yzy/.platformio/packages/toolchain-gccarmnoneeabi/bin/arm-none-eabi-g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/Z_DUMMY_TARGET.dir/lib/protoc/protoc.cpp.obj -c /Users/yzy/CLionProjects/GSAaio-wifi/lib/protoc/protoc.cpp

CMakeFiles/Z_DUMMY_TARGET.dir/lib/protoc/protoc.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Z_DUMMY_TARGET.dir/lib/protoc/protoc.cpp.i"
	/Users/yzy/.platformio/packages/toolchain-gccarmnoneeabi/bin/arm-none-eabi-g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/yzy/CLionProjects/GSAaio-wifi/lib/protoc/protoc.cpp > CMakeFiles/Z_DUMMY_TARGET.dir/lib/protoc/protoc.cpp.i

CMakeFiles/Z_DUMMY_TARGET.dir/lib/protoc/protoc.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Z_DUMMY_TARGET.dir/lib/protoc/protoc.cpp.s"
	/Users/yzy/.platformio/packages/toolchain-gccarmnoneeabi/bin/arm-none-eabi-g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/yzy/CLionProjects/GSAaio-wifi/lib/protoc/protoc.cpp -o CMakeFiles/Z_DUMMY_TARGET.dir/lib/protoc/protoc.cpp.s

CMakeFiles/Z_DUMMY_TARGET.dir/lib/protoc/serial.cpp.obj: CMakeFiles/Z_DUMMY_TARGET.dir/flags.make
CMakeFiles/Z_DUMMY_TARGET.dir/lib/protoc/serial.cpp.obj: ../lib/protoc/serial.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/yzy/CLionProjects/GSAaio-wifi/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Building CXX object CMakeFiles/Z_DUMMY_TARGET.dir/lib/protoc/serial.cpp.obj"
	/Users/yzy/.platformio/packages/toolchain-gccarmnoneeabi/bin/arm-none-eabi-g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/Z_DUMMY_TARGET.dir/lib/protoc/serial.cpp.obj -c /Users/yzy/CLionProjects/GSAaio-wifi/lib/protoc/serial.cpp

CMakeFiles/Z_DUMMY_TARGET.dir/lib/protoc/serial.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Z_DUMMY_TARGET.dir/lib/protoc/serial.cpp.i"
	/Users/yzy/.platformio/packages/toolchain-gccarmnoneeabi/bin/arm-none-eabi-g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/yzy/CLionProjects/GSAaio-wifi/lib/protoc/serial.cpp > CMakeFiles/Z_DUMMY_TARGET.dir/lib/protoc/serial.cpp.i

CMakeFiles/Z_DUMMY_TARGET.dir/lib/protoc/serial.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Z_DUMMY_TARGET.dir/lib/protoc/serial.cpp.s"
	/Users/yzy/.platformio/packages/toolchain-gccarmnoneeabi/bin/arm-none-eabi-g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/yzy/CLionProjects/GSAaio-wifi/lib/protoc/serial.cpp -o CMakeFiles/Z_DUMMY_TARGET.dir/lib/protoc/serial.cpp.s

CMakeFiles/Z_DUMMY_TARGET.dir/src/main.cpp.obj: CMakeFiles/Z_DUMMY_TARGET.dir/flags.make
CMakeFiles/Z_DUMMY_TARGET.dir/src/main.cpp.obj: ../src/main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/yzy/CLionProjects/GSAaio-wifi/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_8) "Building CXX object CMakeFiles/Z_DUMMY_TARGET.dir/src/main.cpp.obj"
	/Users/yzy/.platformio/packages/toolchain-gccarmnoneeabi/bin/arm-none-eabi-g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/Z_DUMMY_TARGET.dir/src/main.cpp.obj -c /Users/yzy/CLionProjects/GSAaio-wifi/src/main.cpp

CMakeFiles/Z_DUMMY_TARGET.dir/src/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Z_DUMMY_TARGET.dir/src/main.cpp.i"
	/Users/yzy/.platformio/packages/toolchain-gccarmnoneeabi/bin/arm-none-eabi-g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/yzy/CLionProjects/GSAaio-wifi/src/main.cpp > CMakeFiles/Z_DUMMY_TARGET.dir/src/main.cpp.i

CMakeFiles/Z_DUMMY_TARGET.dir/src/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Z_DUMMY_TARGET.dir/src/main.cpp.s"
	/Users/yzy/.platformio/packages/toolchain-gccarmnoneeabi/bin/arm-none-eabi-g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/yzy/CLionProjects/GSAaio-wifi/src/main.cpp -o CMakeFiles/Z_DUMMY_TARGET.dir/src/main.cpp.s

# Object files for target Z_DUMMY_TARGET
Z_DUMMY_TARGET_OBJECTS = \
"CMakeFiles/Z_DUMMY_TARGET.dir/lib/AIOapp/AIOapp.cpp.obj" \
"CMakeFiles/Z_DUMMY_TARGET.dir/lib/FlowController/FlowController.cpp.obj" \
"CMakeFiles/Z_DUMMY_TARGET.dir/lib/SensorBoard/SensorBoard.cpp.obj" \
"CMakeFiles/Z_DUMMY_TARGET.dir/lib/actuator/Pump.cpp.obj" \
"CMakeFiles/Z_DUMMY_TARGET.dir/lib/actuator/Valve.cpp.obj" \
"CMakeFiles/Z_DUMMY_TARGET.dir/lib/protoc/protoc.cpp.obj" \
"CMakeFiles/Z_DUMMY_TARGET.dir/lib/protoc/serial.cpp.obj" \
"CMakeFiles/Z_DUMMY_TARGET.dir/src/main.cpp.obj"

# External object files for target Z_DUMMY_TARGET
Z_DUMMY_TARGET_EXTERNAL_OBJECTS =

Z_DUMMY_TARGET: CMakeFiles/Z_DUMMY_TARGET.dir/lib/AIOapp/AIOapp.cpp.obj
Z_DUMMY_TARGET: CMakeFiles/Z_DUMMY_TARGET.dir/lib/FlowController/FlowController.cpp.obj
Z_DUMMY_TARGET: CMakeFiles/Z_DUMMY_TARGET.dir/lib/SensorBoard/SensorBoard.cpp.obj
Z_DUMMY_TARGET: CMakeFiles/Z_DUMMY_TARGET.dir/lib/actuator/Pump.cpp.obj
Z_DUMMY_TARGET: CMakeFiles/Z_DUMMY_TARGET.dir/lib/actuator/Valve.cpp.obj
Z_DUMMY_TARGET: CMakeFiles/Z_DUMMY_TARGET.dir/lib/protoc/protoc.cpp.obj
Z_DUMMY_TARGET: CMakeFiles/Z_DUMMY_TARGET.dir/lib/protoc/serial.cpp.obj
Z_DUMMY_TARGET: CMakeFiles/Z_DUMMY_TARGET.dir/src/main.cpp.obj
Z_DUMMY_TARGET: CMakeFiles/Z_DUMMY_TARGET.dir/build.make
Z_DUMMY_TARGET: CMakeFiles/Z_DUMMY_TARGET.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/yzy/CLionProjects/GSAaio-wifi/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_9) "Linking CXX executable Z_DUMMY_TARGET"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/Z_DUMMY_TARGET.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/Z_DUMMY_TARGET.dir/build: Z_DUMMY_TARGET

.PHONY : CMakeFiles/Z_DUMMY_TARGET.dir/build

CMakeFiles/Z_DUMMY_TARGET.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/Z_DUMMY_TARGET.dir/cmake_clean.cmake
.PHONY : CMakeFiles/Z_DUMMY_TARGET.dir/clean

CMakeFiles/Z_DUMMY_TARGET.dir/depend:
	cd /Users/yzy/CLionProjects/GSAaio-wifi/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/yzy/CLionProjects/GSAaio-wifi /Users/yzy/CLionProjects/GSAaio-wifi /Users/yzy/CLionProjects/GSAaio-wifi/cmake-build-debug /Users/yzy/CLionProjects/GSAaio-wifi/cmake-build-debug /Users/yzy/CLionProjects/GSAaio-wifi/cmake-build-debug/CMakeFiles/Z_DUMMY_TARGET.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/Z_DUMMY_TARGET.dir/depend

