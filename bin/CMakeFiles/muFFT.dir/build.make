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
include CMakeFiles/muFFT.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/muFFT.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/muFFT.dir/flags.make

CMakeFiles/muFFT.dir/fft.c.o: CMakeFiles/muFFT.dir/flags.make
CMakeFiles/muFFT.dir/fft.c.o: /home/gaz/prog/fft/muFFT/fft.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/gaz/prog/fft/bin/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object CMakeFiles/muFFT.dir/fft.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/muFFT.dir/fft.c.o   -c /home/gaz/prog/fft/muFFT/fft.c

CMakeFiles/muFFT.dir/fft.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/muFFT.dir/fft.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/gaz/prog/fft/muFFT/fft.c > CMakeFiles/muFFT.dir/fft.c.i

CMakeFiles/muFFT.dir/fft.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/muFFT.dir/fft.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/gaz/prog/fft/muFFT/fft.c -o CMakeFiles/muFFT.dir/fft.c.s

CMakeFiles/muFFT.dir/kernel.c.o: CMakeFiles/muFFT.dir/flags.make
CMakeFiles/muFFT.dir/kernel.c.o: /home/gaz/prog/fft/muFFT/kernel.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/gaz/prog/fft/bin/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building C object CMakeFiles/muFFT.dir/kernel.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/muFFT.dir/kernel.c.o   -c /home/gaz/prog/fft/muFFT/kernel.c

CMakeFiles/muFFT.dir/kernel.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/muFFT.dir/kernel.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/gaz/prog/fft/muFFT/kernel.c > CMakeFiles/muFFT.dir/kernel.c.i

CMakeFiles/muFFT.dir/kernel.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/muFFT.dir/kernel.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/gaz/prog/fft/muFFT/kernel.c -o CMakeFiles/muFFT.dir/kernel.c.s

CMakeFiles/muFFT.dir/cpu.c.o: CMakeFiles/muFFT.dir/flags.make
CMakeFiles/muFFT.dir/cpu.c.o: /home/gaz/prog/fft/muFFT/cpu.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/gaz/prog/fft/bin/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building C object CMakeFiles/muFFT.dir/cpu.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/muFFT.dir/cpu.c.o   -c /home/gaz/prog/fft/muFFT/cpu.c

CMakeFiles/muFFT.dir/cpu.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/muFFT.dir/cpu.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/gaz/prog/fft/muFFT/cpu.c > CMakeFiles/muFFT.dir/cpu.c.i

CMakeFiles/muFFT.dir/cpu.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/muFFT.dir/cpu.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/gaz/prog/fft/muFFT/cpu.c -o CMakeFiles/muFFT.dir/cpu.c.s

# Object files for target muFFT
muFFT_OBJECTS = \
"CMakeFiles/muFFT.dir/fft.c.o" \
"CMakeFiles/muFFT.dir/kernel.c.o" \
"CMakeFiles/muFFT.dir/cpu.c.o"

# External object files for target muFFT
muFFT_EXTERNAL_OBJECTS =

libmuFFT.a: CMakeFiles/muFFT.dir/fft.c.o
libmuFFT.a: CMakeFiles/muFFT.dir/kernel.c.o
libmuFFT.a: CMakeFiles/muFFT.dir/cpu.c.o
libmuFFT.a: CMakeFiles/muFFT.dir/build.make
libmuFFT.a: CMakeFiles/muFFT.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/gaz/prog/fft/bin/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Linking C static library libmuFFT.a"
	$(CMAKE_COMMAND) -P CMakeFiles/muFFT.dir/cmake_clean_target.cmake
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/muFFT.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/muFFT.dir/build: libmuFFT.a

.PHONY : CMakeFiles/muFFT.dir/build

CMakeFiles/muFFT.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/muFFT.dir/cmake_clean.cmake
.PHONY : CMakeFiles/muFFT.dir/clean

CMakeFiles/muFFT.dir/depend:
	cd /home/gaz/prog/fft/bin && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/gaz/prog/fft/muFFT /home/gaz/prog/fft/muFFT /home/gaz/prog/fft/bin /home/gaz/prog/fft/bin /home/gaz/prog/fft/bin/CMakeFiles/muFFT.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/muFFT.dir/depend

