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

# The program to use to edit the cache.
CMAKE_EDIT_COMMAND = /usr/bin/ccmake

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/univ/projects/podofomemo/podofoSRC

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/univ/projects/podofomemo/build

# Include any dependencies generated for this target.
include test/DeviceTest/CMakeFiles/DeviceTest.dir/depend.make

# Include the progress variables for this target.
include test/DeviceTest/CMakeFiles/DeviceTest.dir/progress.make

# Include the compile flags for this target's objects.
include test/DeviceTest/CMakeFiles/DeviceTest.dir/flags.make

test/DeviceTest/CMakeFiles/DeviceTest.dir/DeviceTest.cpp.o: test/DeviceTest/CMakeFiles/DeviceTest.dir/flags.make
test/DeviceTest/CMakeFiles/DeviceTest.dir/DeviceTest.cpp.o: /home/univ/projects/podofomemo/podofoSRC/test/DeviceTest/DeviceTest.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/univ/projects/podofomemo/build/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object test/DeviceTest/CMakeFiles/DeviceTest.dir/DeviceTest.cpp.o"
	cd /home/univ/projects/podofomemo/build/test/DeviceTest && /usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/DeviceTest.dir/DeviceTest.cpp.o -c /home/univ/projects/podofomemo/podofoSRC/test/DeviceTest/DeviceTest.cpp

test/DeviceTest/CMakeFiles/DeviceTest.dir/DeviceTest.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/DeviceTest.dir/DeviceTest.cpp.i"
	cd /home/univ/projects/podofomemo/build/test/DeviceTest && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/univ/projects/podofomemo/podofoSRC/test/DeviceTest/DeviceTest.cpp > CMakeFiles/DeviceTest.dir/DeviceTest.cpp.i

test/DeviceTest/CMakeFiles/DeviceTest.dir/DeviceTest.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/DeviceTest.dir/DeviceTest.cpp.s"
	cd /home/univ/projects/podofomemo/build/test/DeviceTest && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/univ/projects/podofomemo/podofoSRC/test/DeviceTest/DeviceTest.cpp -o CMakeFiles/DeviceTest.dir/DeviceTest.cpp.s

test/DeviceTest/CMakeFiles/DeviceTest.dir/DeviceTest.cpp.o.requires:
.PHONY : test/DeviceTest/CMakeFiles/DeviceTest.dir/DeviceTest.cpp.o.requires

test/DeviceTest/CMakeFiles/DeviceTest.dir/DeviceTest.cpp.o.provides: test/DeviceTest/CMakeFiles/DeviceTest.dir/DeviceTest.cpp.o.requires
	$(MAKE) -f test/DeviceTest/CMakeFiles/DeviceTest.dir/build.make test/DeviceTest/CMakeFiles/DeviceTest.dir/DeviceTest.cpp.o.provides.build
.PHONY : test/DeviceTest/CMakeFiles/DeviceTest.dir/DeviceTest.cpp.o.provides

test/DeviceTest/CMakeFiles/DeviceTest.dir/DeviceTest.cpp.o.provides.build: test/DeviceTest/CMakeFiles/DeviceTest.dir/DeviceTest.cpp.o

# Object files for target DeviceTest
DeviceTest_OBJECTS = \
"CMakeFiles/DeviceTest.dir/DeviceTest.cpp.o"

# External object files for target DeviceTest
DeviceTest_EXTERNAL_OBJECTS =

test/DeviceTest/DeviceTest: test/DeviceTest/CMakeFiles/DeviceTest.dir/DeviceTest.cpp.o
test/DeviceTest/DeviceTest: /usr/lib/i386-linux-gnu/libfontconfig.so
test/DeviceTest/DeviceTest: /usr/lib/i386-linux-gnu/libz.so
test/DeviceTest/DeviceTest: /usr/lib/i386-linux-gnu/libcrypto.so
test/DeviceTest/DeviceTest: /usr/lib/i386-linux-gnu/libjpeg.so
test/DeviceTest/DeviceTest: /usr/lib/i386-linux-gnu/libfreetype.so
test/DeviceTest/DeviceTest: /usr/lib/i386-linux-gnu/libpng.so
test/DeviceTest/DeviceTest: /usr/lib/i386-linux-gnu/libz.so
test/DeviceTest/DeviceTest: /usr/lib/i386-linux-gnu/libtiff.so
test/DeviceTest/DeviceTest: /usr/lib/i386-linux-gnu/libfontconfig.so
test/DeviceTest/DeviceTest: /usr/lib/i386-linux-gnu/libz.so
test/DeviceTest/DeviceTest: /usr/lib/i386-linux-gnu/libcrypto.so
test/DeviceTest/DeviceTest: /usr/lib/i386-linux-gnu/libjpeg.so
test/DeviceTest/DeviceTest: /usr/lib/i386-linux-gnu/libfreetype.so
test/DeviceTest/DeviceTest: /usr/lib/i386-linux-gnu/libpng.so
test/DeviceTest/DeviceTest: /usr/lib/i386-linux-gnu/libz.so
test/DeviceTest/DeviceTest: /usr/lib/i386-linux-gnu/libtiff.so
test/DeviceTest/DeviceTest: test/DeviceTest/CMakeFiles/DeviceTest.dir/build.make
test/DeviceTest/DeviceTest: test/DeviceTest/CMakeFiles/DeviceTest.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking CXX executable DeviceTest"
	cd /home/univ/projects/podofomemo/build/test/DeviceTest && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/DeviceTest.dir/link.txt --verbose=$(VERBOSE)
	cd /home/univ/projects/podofomemo/build/test/DeviceTest && /usr/bin/cmake -E copy_directory /home/univ/projects/podofomemo/podofoSRC/test/DeviceTest/objects /home/univ/projects/podofomemo/build/test/DeviceTest/objects

# Rule to build all files generated by this target.
test/DeviceTest/CMakeFiles/DeviceTest.dir/build: test/DeviceTest/DeviceTest
.PHONY : test/DeviceTest/CMakeFiles/DeviceTest.dir/build

test/DeviceTest/CMakeFiles/DeviceTest.dir/requires: test/DeviceTest/CMakeFiles/DeviceTest.dir/DeviceTest.cpp.o.requires
.PHONY : test/DeviceTest/CMakeFiles/DeviceTest.dir/requires

test/DeviceTest/CMakeFiles/DeviceTest.dir/clean:
	cd /home/univ/projects/podofomemo/build/test/DeviceTest && $(CMAKE_COMMAND) -P CMakeFiles/DeviceTest.dir/cmake_clean.cmake
.PHONY : test/DeviceTest/CMakeFiles/DeviceTest.dir/clean

test/DeviceTest/CMakeFiles/DeviceTest.dir/depend:
	cd /home/univ/projects/podofomemo/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/univ/projects/podofomemo/podofoSRC /home/univ/projects/podofomemo/podofoSRC/test/DeviceTest /home/univ/projects/podofomemo/build /home/univ/projects/podofomemo/build/test/DeviceTest /home/univ/projects/podofomemo/build/test/DeviceTest/CMakeFiles/DeviceTest.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : test/DeviceTest/CMakeFiles/DeviceTest.dir/depend
