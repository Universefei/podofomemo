# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 2.8

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
CMAKE_SOURCE_DIR = /home/fei/proj/podofomemo/podofoSRC

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/fei/proj/podofomemo/build

# Include any dependencies generated for this target.
include examples/helloworld/CMakeFiles/helloworld.dir/depend.make

# Include the progress variables for this target.
include examples/helloworld/CMakeFiles/helloworld.dir/progress.make

# Include the compile flags for this target's objects.
include examples/helloworld/CMakeFiles/helloworld.dir/flags.make

examples/helloworld/CMakeFiles/helloworld.dir/helloworld.cpp.o: examples/helloworld/CMakeFiles/helloworld.dir/flags.make
examples/helloworld/CMakeFiles/helloworld.dir/helloworld.cpp.o: /home/fei/proj/podofomemo/podofoSRC/examples/helloworld/helloworld.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/fei/proj/podofomemo/build/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object examples/helloworld/CMakeFiles/helloworld.dir/helloworld.cpp.o"
	cd /home/fei/proj/podofomemo/build/examples/helloworld && /usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/helloworld.dir/helloworld.cpp.o -c /home/fei/proj/podofomemo/podofoSRC/examples/helloworld/helloworld.cpp

examples/helloworld/CMakeFiles/helloworld.dir/helloworld.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/helloworld.dir/helloworld.cpp.i"
	cd /home/fei/proj/podofomemo/build/examples/helloworld && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/fei/proj/podofomemo/podofoSRC/examples/helloworld/helloworld.cpp > CMakeFiles/helloworld.dir/helloworld.cpp.i

examples/helloworld/CMakeFiles/helloworld.dir/helloworld.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/helloworld.dir/helloworld.cpp.s"
	cd /home/fei/proj/podofomemo/build/examples/helloworld && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/fei/proj/podofomemo/podofoSRC/examples/helloworld/helloworld.cpp -o CMakeFiles/helloworld.dir/helloworld.cpp.s

examples/helloworld/CMakeFiles/helloworld.dir/helloworld.cpp.o.requires:
.PHONY : examples/helloworld/CMakeFiles/helloworld.dir/helloworld.cpp.o.requires

examples/helloworld/CMakeFiles/helloworld.dir/helloworld.cpp.o.provides: examples/helloworld/CMakeFiles/helloworld.dir/helloworld.cpp.o.requires
	$(MAKE) -f examples/helloworld/CMakeFiles/helloworld.dir/build.make examples/helloworld/CMakeFiles/helloworld.dir/helloworld.cpp.o.provides.build
.PHONY : examples/helloworld/CMakeFiles/helloworld.dir/helloworld.cpp.o.provides

examples/helloworld/CMakeFiles/helloworld.dir/helloworld.cpp.o.provides.build: examples/helloworld/CMakeFiles/helloworld.dir/helloworld.cpp.o

# Object files for target helloworld
helloworld_OBJECTS = \
"CMakeFiles/helloworld.dir/helloworld.cpp.o"

# External object files for target helloworld
helloworld_EXTERNAL_OBJECTS =

examples/helloworld/helloworld: examples/helloworld/CMakeFiles/helloworld.dir/helloworld.cpp.o
examples/helloworld/helloworld: examples/helloworld/CMakeFiles/helloworld.dir/build.make
examples/helloworld/helloworld: /usr/lib/x86_64-linux-gnu/libfontconfig.so
examples/helloworld/helloworld: /usr/lib/x86_64-linux-gnu/libz.so
examples/helloworld/helloworld: /usr/lib/x86_64-linux-gnu/libcrypto.so
examples/helloworld/helloworld: /usr/lib/x86_64-linux-gnu/libjpeg.so
examples/helloworld/helloworld: /usr/lib/x86_64-linux-gnu/libfreetype.so
examples/helloworld/helloworld: /usr/lib/x86_64-linux-gnu/libtiff.so
examples/helloworld/helloworld: examples/helloworld/CMakeFiles/helloworld.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking CXX executable helloworld"
	cd /home/fei/proj/podofomemo/build/examples/helloworld && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/helloworld.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
examples/helloworld/CMakeFiles/helloworld.dir/build: examples/helloworld/helloworld
.PHONY : examples/helloworld/CMakeFiles/helloworld.dir/build

examples/helloworld/CMakeFiles/helloworld.dir/requires: examples/helloworld/CMakeFiles/helloworld.dir/helloworld.cpp.o.requires
.PHONY : examples/helloworld/CMakeFiles/helloworld.dir/requires

examples/helloworld/CMakeFiles/helloworld.dir/clean:
	cd /home/fei/proj/podofomemo/build/examples/helloworld && $(CMAKE_COMMAND) -P CMakeFiles/helloworld.dir/cmake_clean.cmake
.PHONY : examples/helloworld/CMakeFiles/helloworld.dir/clean

examples/helloworld/CMakeFiles/helloworld.dir/depend:
	cd /home/fei/proj/podofomemo/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/fei/proj/podofomemo/podofoSRC /home/fei/proj/podofomemo/podofoSRC/examples/helloworld /home/fei/proj/podofomemo/build /home/fei/proj/podofomemo/build/examples/helloworld /home/fei/proj/podofomemo/build/examples/helloworld/CMakeFiles/helloworld.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : examples/helloworld/CMakeFiles/helloworld.dir/depend

