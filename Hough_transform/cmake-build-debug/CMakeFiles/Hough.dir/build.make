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
CMAKE_SOURCE_DIR = /home/top/CLionProjects/Hough

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/top/CLionProjects/Hough/cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles/Hough.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/Hough.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/Hough.dir/flags.make

CMakeFiles/Hough.dir/main.cpp.o: CMakeFiles/Hough.dir/flags.make
CMakeFiles/Hough.dir/main.cpp.o: ../main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/top/CLionProjects/Hough/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/Hough.dir/main.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/Hough.dir/main.cpp.o -c /home/top/CLionProjects/Hough/main.cpp

CMakeFiles/Hough.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Hough.dir/main.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/top/CLionProjects/Hough/main.cpp > CMakeFiles/Hough.dir/main.cpp.i

CMakeFiles/Hough.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Hough.dir/main.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/top/CLionProjects/Hough/main.cpp -o CMakeFiles/Hough.dir/main.cpp.s

# Object files for target Hough
Hough_OBJECTS = \
"CMakeFiles/Hough.dir/main.cpp.o"

# External object files for target Hough
Hough_EXTERNAL_OBJECTS =

Hough: CMakeFiles/Hough.dir/main.cpp.o
Hough: CMakeFiles/Hough.dir/build.make
Hough: CMakeFiles/Hough.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/top/CLionProjects/Hough/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable Hough"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/Hough.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/Hough.dir/build: Hough

.PHONY : CMakeFiles/Hough.dir/build

CMakeFiles/Hough.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/Hough.dir/cmake_clean.cmake
.PHONY : CMakeFiles/Hough.dir/clean

CMakeFiles/Hough.dir/depend:
	cd /home/top/CLionProjects/Hough/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/top/CLionProjects/Hough /home/top/CLionProjects/Hough /home/top/CLionProjects/Hough/cmake-build-debug /home/top/CLionProjects/Hough/cmake-build-debug /home/top/CLionProjects/Hough/cmake-build-debug/CMakeFiles/Hough.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/Hough.dir/depend
