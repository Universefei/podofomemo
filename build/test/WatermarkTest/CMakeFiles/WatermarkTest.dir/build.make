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
include test/WatermarkTest/CMakeFiles/WatermarkTest.dir/depend.make

# Include the progress variables for this target.
include test/WatermarkTest/CMakeFiles/WatermarkTest.dir/progress.make

# Include the compile flags for this target's objects.
include test/WatermarkTest/CMakeFiles/WatermarkTest.dir/flags.make

test/WatermarkTest/CMakeFiles/WatermarkTest.dir/WatermarkTest.cpp.o: test/WatermarkTest/CMakeFiles/WatermarkTest.dir/flags.make
test/WatermarkTest/CMakeFiles/WatermarkTest.dir/WatermarkTest.cpp.o: /home/fei/proj/podofomemo/podofoSRC/test/WatermarkTest/WatermarkTest.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/fei/proj/podofomemo/build/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object test/WatermarkTest/CMakeFiles/WatermarkTest.dir/WatermarkTest.cpp.o"
	cd /home/fei/proj/podofomemo/build/test/WatermarkTest && /usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/WatermarkTest.dir/WatermarkTest.cpp.o -c /home/fei/proj/podofomemo/podofoSRC/test/WatermarkTest/WatermarkTest.cpp

test/WatermarkTest/CMakeFiles/WatermarkTest.dir/WatermarkTest.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/WatermarkTest.dir/WatermarkTest.cpp.i"
	cd /home/fei/proj/podofomemo/build/test/WatermarkTest && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/fei/proj/podofomemo/podofoSRC/test/WatermarkTest/WatermarkTest.cpp > CMakeFiles/WatermarkTest.dir/WatermarkTest.cpp.i

test/WatermarkTest/CMakeFiles/WatermarkTest.dir/WatermarkTest.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/WatermarkTest.dir/WatermarkTest.cpp.s"
	cd /home/fei/proj/podofomemo/build/test/WatermarkTest && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/fei/proj/podofomemo/podofoSRC/test/WatermarkTest/WatermarkTest.cpp -o CMakeFiles/WatermarkTest.dir/WatermarkTest.cpp.s

test/WatermarkTest/CMakeFiles/WatermarkTest.dir/WatermarkTest.cpp.o.requires:
.PHONY : test/WatermarkTest/CMakeFiles/WatermarkTest.dir/WatermarkTest.cpp.o.requires

test/WatermarkTest/CMakeFiles/WatermarkTest.dir/WatermarkTest.cpp.o.provides: test/WatermarkTest/CMakeFiles/WatermarkTest.dir/WatermarkTest.cpp.o.requires
	$(MAKE) -f test/WatermarkTest/CMakeFiles/WatermarkTest.dir/build.make test/WatermarkTest/CMakeFiles/WatermarkTest.dir/WatermarkTest.cpp.o.provides.build
.PHONY : test/WatermarkTest/CMakeFiles/WatermarkTest.dir/WatermarkTest.cpp.o.provides

test/WatermarkTest/CMakeFiles/WatermarkTest.dir/WatermarkTest.cpp.o.provides.build: test/WatermarkTest/CMakeFiles/WatermarkTest.dir/WatermarkTest.cpp.o

# Object files for target WatermarkTest
WatermarkTest_OBJECTS = \
"CMakeFiles/WatermarkTest.dir/WatermarkTest.cpp.o"

# External object files for target WatermarkTest
WatermarkTest_EXTERNAL_OBJECTS =

test/WatermarkTest/WatermarkTest: test/WatermarkTest/CMakeFiles/WatermarkTest.dir/WatermarkTest.cpp.o
test/WatermarkTest/WatermarkTest: test/WatermarkTest/CMakeFiles/WatermarkTest.dir/build.make
test/WatermarkTest/WatermarkTest: /usr/lib/x86_64-linux-gnu/libfontconfig.so
test/WatermarkTest/WatermarkTest: /usr/lib/x86_64-linux-gnu/libz.so
test/WatermarkTest/WatermarkTest: /usr/lib/x86_64-linux-gnu/libcrypto.so
test/WatermarkTest/WatermarkTest: /usr/lib/x86_64-linux-gnu/libjpeg.so
test/WatermarkTest/WatermarkTest: /usr/lib/x86_64-linux-gnu/libfreetype.so
test/WatermarkTest/WatermarkTest: /usr/lib/x86_64-linux-gnu/libtiff.so
test/WatermarkTest/WatermarkTest: /usr/lib/x86_64-linux-gnu/libfontconfig.so
test/WatermarkTest/WatermarkTest: /usr/lib/x86_64-linux-gnu/libz.so
test/WatermarkTest/WatermarkTest: /usr/lib/x86_64-linux-gnu/libcrypto.so
test/WatermarkTest/WatermarkTest: /usr/lib/x86_64-linux-gnu/libjpeg.so
test/WatermarkTest/WatermarkTest: /usr/lib/x86_64-linux-gnu/libfreetype.so
test/WatermarkTest/WatermarkTest: /usr/lib/x86_64-linux-gnu/libtiff.so
test/WatermarkTest/WatermarkTest: test/WatermarkTest/CMakeFiles/WatermarkTest.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking CXX executable WatermarkTest"
	cd /home/fei/proj/podofomemo/build/test/WatermarkTest && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/WatermarkTest.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
test/WatermarkTest/CMakeFiles/WatermarkTest.dir/build: test/WatermarkTest/WatermarkTest
.PHONY : test/WatermarkTest/CMakeFiles/WatermarkTest.dir/build

test/WatermarkTest/CMakeFiles/WatermarkTest.dir/requires: test/WatermarkTest/CMakeFiles/WatermarkTest.dir/WatermarkTest.cpp.o.requires
.PHONY : test/WatermarkTest/CMakeFiles/WatermarkTest.dir/requires

test/WatermarkTest/CMakeFiles/WatermarkTest.dir/clean:
	cd /home/fei/proj/podofomemo/build/test/WatermarkTest && $(CMAKE_COMMAND) -P CMakeFiles/WatermarkTest.dir/cmake_clean.cmake
.PHONY : test/WatermarkTest/CMakeFiles/WatermarkTest.dir/clean

test/WatermarkTest/CMakeFiles/WatermarkTest.dir/depend:
	cd /home/fei/proj/podofomemo/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/fei/proj/podofomemo/podofoSRC /home/fei/proj/podofomemo/podofoSRC/test/WatermarkTest /home/fei/proj/podofomemo/build /home/fei/proj/podofomemo/build/test/WatermarkTest /home/fei/proj/podofomemo/build/test/WatermarkTest/CMakeFiles/WatermarkTest.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : test/WatermarkTest/CMakeFiles/WatermarkTest.dir/depend

