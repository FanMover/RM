# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.5

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list


# Suppress display of executed commands.
$(VERBOSE).SILENT:


# A target that is always out of date.
cmake_force:

.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/nvidia/RM2018

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/nvidia/RM2018

# Include any dependencies generated for this target.
include serial/CMakeFiles/serial.dir/depend.make

# Include the progress variables for this target.
include serial/CMakeFiles/serial.dir/progress.make

# Include the compile flags for this target's objects.
include serial/CMakeFiles/serial.dir/flags.make

serial/CMakeFiles/serial.dir/SerialCom.cpp.o: serial/CMakeFiles/serial.dir/flags.make
serial/CMakeFiles/serial.dir/SerialCom.cpp.o: serial/SerialCom.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/nvidia/RM2018/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object serial/CMakeFiles/serial.dir/SerialCom.cpp.o"
	cd /home/nvidia/RM2018/serial && /usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/serial.dir/SerialCom.cpp.o -c /home/nvidia/RM2018/serial/SerialCom.cpp

serial/CMakeFiles/serial.dir/SerialCom.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/serial.dir/SerialCom.cpp.i"
	cd /home/nvidia/RM2018/serial && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/nvidia/RM2018/serial/SerialCom.cpp > CMakeFiles/serial.dir/SerialCom.cpp.i

serial/CMakeFiles/serial.dir/SerialCom.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/serial.dir/SerialCom.cpp.s"
	cd /home/nvidia/RM2018/serial && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/nvidia/RM2018/serial/SerialCom.cpp -o CMakeFiles/serial.dir/SerialCom.cpp.s

serial/CMakeFiles/serial.dir/SerialCom.cpp.o.requires:

.PHONY : serial/CMakeFiles/serial.dir/SerialCom.cpp.o.requires

serial/CMakeFiles/serial.dir/SerialCom.cpp.o.provides: serial/CMakeFiles/serial.dir/SerialCom.cpp.o.requires
	$(MAKE) -f serial/CMakeFiles/serial.dir/build.make serial/CMakeFiles/serial.dir/SerialCom.cpp.o.provides.build
.PHONY : serial/CMakeFiles/serial.dir/SerialCom.cpp.o.provides

serial/CMakeFiles/serial.dir/SerialCom.cpp.o.provides.build: serial/CMakeFiles/serial.dir/SerialCom.cpp.o


serial/CMakeFiles/serial.dir/Policy.cpp.o: serial/CMakeFiles/serial.dir/flags.make
serial/CMakeFiles/serial.dir/Policy.cpp.o: serial/Policy.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/nvidia/RM2018/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object serial/CMakeFiles/serial.dir/Policy.cpp.o"
	cd /home/nvidia/RM2018/serial && /usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/serial.dir/Policy.cpp.o -c /home/nvidia/RM2018/serial/Policy.cpp

serial/CMakeFiles/serial.dir/Policy.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/serial.dir/Policy.cpp.i"
	cd /home/nvidia/RM2018/serial && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/nvidia/RM2018/serial/Policy.cpp > CMakeFiles/serial.dir/Policy.cpp.i

serial/CMakeFiles/serial.dir/Policy.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/serial.dir/Policy.cpp.s"
	cd /home/nvidia/RM2018/serial && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/nvidia/RM2018/serial/Policy.cpp -o CMakeFiles/serial.dir/Policy.cpp.s

serial/CMakeFiles/serial.dir/Policy.cpp.o.requires:

.PHONY : serial/CMakeFiles/serial.dir/Policy.cpp.o.requires

serial/CMakeFiles/serial.dir/Policy.cpp.o.provides: serial/CMakeFiles/serial.dir/Policy.cpp.o.requires
	$(MAKE) -f serial/CMakeFiles/serial.dir/build.make serial/CMakeFiles/serial.dir/Policy.cpp.o.provides.build
.PHONY : serial/CMakeFiles/serial.dir/Policy.cpp.o.provides

serial/CMakeFiles/serial.dir/Policy.cpp.o.provides.build: serial/CMakeFiles/serial.dir/Policy.cpp.o


serial/CMakeFiles/serial.dir/pid.cpp.o: serial/CMakeFiles/serial.dir/flags.make
serial/CMakeFiles/serial.dir/pid.cpp.o: serial/pid.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/nvidia/RM2018/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object serial/CMakeFiles/serial.dir/pid.cpp.o"
	cd /home/nvidia/RM2018/serial && /usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/serial.dir/pid.cpp.o -c /home/nvidia/RM2018/serial/pid.cpp

serial/CMakeFiles/serial.dir/pid.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/serial.dir/pid.cpp.i"
	cd /home/nvidia/RM2018/serial && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/nvidia/RM2018/serial/pid.cpp > CMakeFiles/serial.dir/pid.cpp.i

serial/CMakeFiles/serial.dir/pid.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/serial.dir/pid.cpp.s"
	cd /home/nvidia/RM2018/serial && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/nvidia/RM2018/serial/pid.cpp -o CMakeFiles/serial.dir/pid.cpp.s

serial/CMakeFiles/serial.dir/pid.cpp.o.requires:

.PHONY : serial/CMakeFiles/serial.dir/pid.cpp.o.requires

serial/CMakeFiles/serial.dir/pid.cpp.o.provides: serial/CMakeFiles/serial.dir/pid.cpp.o.requires
	$(MAKE) -f serial/CMakeFiles/serial.dir/build.make serial/CMakeFiles/serial.dir/pid.cpp.o.provides.build
.PHONY : serial/CMakeFiles/serial.dir/pid.cpp.o.provides

serial/CMakeFiles/serial.dir/pid.cpp.o.provides.build: serial/CMakeFiles/serial.dir/pid.cpp.o


serial/CMakeFiles/serial.dir/algorithmOfCRC.cpp.o: serial/CMakeFiles/serial.dir/flags.make
serial/CMakeFiles/serial.dir/algorithmOfCRC.cpp.o: serial/algorithmOfCRC.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/nvidia/RM2018/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object serial/CMakeFiles/serial.dir/algorithmOfCRC.cpp.o"
	cd /home/nvidia/RM2018/serial && /usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/serial.dir/algorithmOfCRC.cpp.o -c /home/nvidia/RM2018/serial/algorithmOfCRC.cpp

serial/CMakeFiles/serial.dir/algorithmOfCRC.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/serial.dir/algorithmOfCRC.cpp.i"
	cd /home/nvidia/RM2018/serial && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/nvidia/RM2018/serial/algorithmOfCRC.cpp > CMakeFiles/serial.dir/algorithmOfCRC.cpp.i

serial/CMakeFiles/serial.dir/algorithmOfCRC.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/serial.dir/algorithmOfCRC.cpp.s"
	cd /home/nvidia/RM2018/serial && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/nvidia/RM2018/serial/algorithmOfCRC.cpp -o CMakeFiles/serial.dir/algorithmOfCRC.cpp.s

serial/CMakeFiles/serial.dir/algorithmOfCRC.cpp.o.requires:

.PHONY : serial/CMakeFiles/serial.dir/algorithmOfCRC.cpp.o.requires

serial/CMakeFiles/serial.dir/algorithmOfCRC.cpp.o.provides: serial/CMakeFiles/serial.dir/algorithmOfCRC.cpp.o.requires
	$(MAKE) -f serial/CMakeFiles/serial.dir/build.make serial/CMakeFiles/serial.dir/algorithmOfCRC.cpp.o.provides.build
.PHONY : serial/CMakeFiles/serial.dir/algorithmOfCRC.cpp.o.provides

serial/CMakeFiles/serial.dir/algorithmOfCRC.cpp.o.provides.build: serial/CMakeFiles/serial.dir/algorithmOfCRC.cpp.o


# Object files for target serial
serial_OBJECTS = \
"CMakeFiles/serial.dir/SerialCom.cpp.o" \
"CMakeFiles/serial.dir/Policy.cpp.o" \
"CMakeFiles/serial.dir/pid.cpp.o" \
"CMakeFiles/serial.dir/algorithmOfCRC.cpp.o"

# External object files for target serial
serial_EXTERNAL_OBJECTS =

serial/libserial.a: serial/CMakeFiles/serial.dir/SerialCom.cpp.o
serial/libserial.a: serial/CMakeFiles/serial.dir/Policy.cpp.o
serial/libserial.a: serial/CMakeFiles/serial.dir/pid.cpp.o
serial/libserial.a: serial/CMakeFiles/serial.dir/algorithmOfCRC.cpp.o
serial/libserial.a: serial/CMakeFiles/serial.dir/build.make
serial/libserial.a: serial/CMakeFiles/serial.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/nvidia/RM2018/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Linking CXX static library libserial.a"
	cd /home/nvidia/RM2018/serial && $(CMAKE_COMMAND) -P CMakeFiles/serial.dir/cmake_clean_target.cmake
	cd /home/nvidia/RM2018/serial && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/serial.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
serial/CMakeFiles/serial.dir/build: serial/libserial.a

.PHONY : serial/CMakeFiles/serial.dir/build

serial/CMakeFiles/serial.dir/requires: serial/CMakeFiles/serial.dir/SerialCom.cpp.o.requires
serial/CMakeFiles/serial.dir/requires: serial/CMakeFiles/serial.dir/Policy.cpp.o.requires
serial/CMakeFiles/serial.dir/requires: serial/CMakeFiles/serial.dir/pid.cpp.o.requires
serial/CMakeFiles/serial.dir/requires: serial/CMakeFiles/serial.dir/algorithmOfCRC.cpp.o.requires

.PHONY : serial/CMakeFiles/serial.dir/requires

serial/CMakeFiles/serial.dir/clean:
	cd /home/nvidia/RM2018/serial && $(CMAKE_COMMAND) -P CMakeFiles/serial.dir/cmake_clean.cmake
.PHONY : serial/CMakeFiles/serial.dir/clean

serial/CMakeFiles/serial.dir/depend:
	cd /home/nvidia/RM2018 && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/nvidia/RM2018 /home/nvidia/RM2018/serial /home/nvidia/RM2018 /home/nvidia/RM2018/serial /home/nvidia/RM2018/serial/CMakeFiles/serial.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : serial/CMakeFiles/serial.dir/depend
