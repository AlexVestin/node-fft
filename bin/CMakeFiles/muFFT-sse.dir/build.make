# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.15

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
CMAKE_SOURCE_DIR = /home/gaz/prog/fft/muFFT

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/gaz/prog/fft/bin

# Include any dependencies generated for this target.
include CMakeFiles/muFFT-sse.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/muFFT-sse.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/muFFT-sse.dir/flags.make

CMakeFiles/muFFT-sse.dir/x86/kernel.sse.c.o: CMakeFiles/muFFT-sse.dir/flags.make
CMakeFiles/muFFT-sse.dir/x86/kernel.sse.c.o: /home/gaz/prog/fft/muFFT/x86/kernel.sse.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/gaz/prog/fft/bin/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object CMakeFiles/muFFT-sse.dir/x86/kernel.sse.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/muFFT-sse.dir/x86/kernel.sse.c.o   -c /home/gaz/prog/fft/muFFT/x86/kernel.sse.c

CMakeFiles/muFFT-sse.dir/x86/kernel.sse.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/muFFT-sse.dir/x86/kernel.sse.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/gaz/prog/fft/muFFT/x86/kernel.sse.c > CMakeFiles/muFFT-sse.dir/x86/kernel.sse.c.i

CMakeFiles/muFFT-sse.dir/x86/kernel.sse.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/muFFT-sse.dir/x86/kernel.sse.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/gaz/prog/fft/muFFT/x86/kernel.sse.c -o CMakeFiles/muFFT-sse.dir/x86/kernel.sse.c.s

# Object files for target muFFT-sse
muFFT__sse_OBJECTS = \
"CMakeFiles/muFFT-sse.dir/x86/kernel.sse.c.o"

# External object files for target muFFT-sse
muFFT__sse_EXTERNAL_OBJECTS =

libmuFFT-sse.a: CMakeFiles/muFFT-sse.dir/x86/kernel.sse.c.o
libmuFFT-sse.a: CMakeFiles/muFFT-sse.dir/build.make
libmuFFT-sse.a: CMakeFiles/muFFT-sse.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/gaz/prog/fft/bin/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking C static library libmuFFT-sse.a"
	$(CMAKE_COMMAND) -P CMakeFiles/muFFT-sse.dir/cmake_clean_target.cmake
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/muFFT-sse.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/muFFT-sse.dir/build: libmuFFT-sse.a

.PHONY : CMakeFiles/muFFT-sse.dir/build

CMakeFiles/muFFT-sse.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/muFFT-sse.dir/cmake_clean.cmake
.PHONY : CMakeFiles/muFFT-sse.dir/clean

CMakeFiles/muFFT-sse.dir/depend:
	cd /home/gaz/prog/fft/bin && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/gaz/prog/fft/muFFT /home/gaz/prog/fft/muFFT /home/gaz/prog/fft/bin /home/gaz/prog/fft/bin /home/gaz/prog/fft/bin/CMakeFiles/muFFT-sse.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/muFFT-sse.dir/depend

