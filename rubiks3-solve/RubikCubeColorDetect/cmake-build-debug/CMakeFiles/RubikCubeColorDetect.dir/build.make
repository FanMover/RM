# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.12

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
CMAKE_COMMAND = /home/top/opt/clion-2018.2.4/bin/cmake/linux/bin/cmake

# The command to remove a file.
RM = /home/top/opt/clion-2018.2.4/bin/cmake/linux/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/top/project/RM/RubikCubeColorDetect

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/top/project/RM/RubikCubeColorDetect/cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles/RubikCubeColorDetect.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/RubikCubeColorDetect.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/RubikCubeColorDetect.dir/flags.make

CMakeFiles/RubikCubeColorDetect.dir/main.cpp.o: CMakeFiles/RubikCubeColorDetect.dir/flags.make
CMakeFiles/RubikCubeColorDetect.dir/main.cpp.o: ../main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/top/project/RM/RubikCubeColorDetect/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/RubikCubeColorDetect.dir/main.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/RubikCubeColorDetect.dir/main.cpp.o -c /home/top/project/RM/RubikCubeColorDetect/main.cpp

CMakeFiles/RubikCubeColorDetect.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/RubikCubeColorDetect.dir/main.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/top/project/RM/RubikCubeColorDetect/main.cpp > CMakeFiles/RubikCubeColorDetect.dir/main.cpp.i

CMakeFiles/RubikCubeColorDetect.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/RubikCubeColorDetect.dir/main.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/top/project/RM/RubikCubeColorDetect/main.cpp -o CMakeFiles/RubikCubeColorDetect.dir/main.cpp.s

# Object files for target RubikCubeColorDetect
RubikCubeColorDetect_OBJECTS = \
"CMakeFiles/RubikCubeColorDetect.dir/main.cpp.o"

# External object files for target RubikCubeColorDetect
RubikCubeColorDetect_EXTERNAL_OBJECTS =

RubikCubeColorDetect: CMakeFiles/RubikCubeColorDetect.dir/main.cpp.o
RubikCubeColorDetect: CMakeFiles/RubikCubeColorDetect.dir/build.make
RubikCubeColorDetect: CMakeFiles/RubikCubeColorDetect.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/top/project/RM/RubikCubeColorDetect/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable RubikCubeColorDetect"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/RubikCubeColorDetect.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/RubikCubeColorDetect.dir/build: RubikCubeColorDetect

.PHONY : CMakeFiles/RubikCubeColorDetect.dir/build

CMakeFiles/RubikCubeColorDetect.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/RubikCubeColorDetect.dir/cmake_clean.cmake
.PHONY : CMakeFiles/RubikCubeColorDetect.dir/clean

CMakeFiles/RubikCubeColorDetect.dir/depend:
	cd /home/top/project/RM/RubikCubeColorDetect/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/top/project/RM/RubikCubeColorDetect /home/top/project/RM/RubikCubeColorDetect /home/top/project/RM/RubikCubeColorDetect/cmake-build-debug /home/top/project/RM/RubikCubeColorDetect/cmake-build-debug /home/top/project/RM/RubikCubeColorDetect/cmake-build-debug/CMakeFiles/RubikCubeColorDetect.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/RubikCubeColorDetect.dir/depend

