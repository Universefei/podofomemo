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

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/univ/projects/podofomemo/podofo

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/univ/projects/podofomemo/podofo-build

# Include any dependencies generated for this target.
include test/FormTest/CMakeFiles/FormTest.dir/depend.make

# Include the progress variables for this target.
include test/FormTest/CMakeFiles/FormTest.dir/progress.make

# Include the compile flags for this target's objects.
include test/FormTest/CMakeFiles/FormTest.dir/flags.make

test/FormTest/CMakeFiles/FormTest.dir/FormTest.cpp.o: test/FormTest/CMakeFiles/FormTest.dir/flags.make
test/FormTest/CMakeFiles/FormTest.dir/FormTest.cpp.o: /home/univ/projects/podofomemo/podofo/test/FormTest/FormTest.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/univ/projects/podofomemo/podofo-build/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object test/FormTest/CMakeFiles/FormTest.dir/FormTest.cpp.o"
	cd /home/univ/projects/podofomemo/podofo-build/test/FormTest && /usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/FormTest.dir/FormTest.cpp.o -c /home/univ/projects/podofomemo/podofo/test/FormTest/FormTest.cpp

test/FormTest/CMakeFiles/FormTest.dir/FormTest.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/FormTest.dir/FormTest.cpp.i"
	cd /home/univ/projects/podofomemo/podofo-build/test/FormTest && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/univ/projects/podofomemo/podofo/test/FormTest/FormTest.cpp > CMakeFiles/FormTest.dir/FormTest.cpp.i

test/FormTest/CMakeFiles/FormTest.dir/FormTest.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/FormTest.dir/FormTest.cpp.s"
	cd /home/univ/projects/podofomemo/podofo-build/test/FormTest && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/univ/projects/podofomemo/podofo/test/FormTest/FormTest.cpp -o CMakeFiles/FormTest.dir/FormTest.cpp.s

test/FormTest/CMakeFiles/FormTest.dir/FormTest.cpp.o.requires:
.PHONY : test/FormTest/CMakeFiles/FormTest.dir/FormTest.cpp.o.requires

test/FormTest/CMakeFiles/FormTest.dir/FormTest.cpp.o.provides: test/FormTest/CMakeFiles/FormTest.dir/FormTest.cpp.o.requires
	$(MAKE) -f test/FormTest/CMakeFiles/FormTest.dir/build.make test/FormTest/CMakeFiles/FormTest.dir/FormTest.cpp.o.provides.build
.PHONY : test/FormTest/CMakeFiles/FormTest.dir/FormTest.cpp.o.provides

test/FormTest/CMakeFiles/FormTest.dir/FormTest.cpp.o.provides.build: test/FormTest/CMakeFiles/FormTest.dir/FormTest.cpp.o

# Object files for target FormTest
FormTest_OBJECTS = \
"CMakeFiles/FormTest.dir/FormTest.cpp.o"

# External object files for target FormTest
FormTest_EXTERNAL_OBJECTS =

test/FormTest/FormTest: test/FormTest/CMakeFiles/FormTest.dir/FormTest.cpp.o
test/FormTest/FormTest: /usr/lib/i386-linux-gnu/libfontconfig.so
test/FormTest/FormTest: /usr/lib/i386-linux-gnu/libz.so
test/FormTest/FormTest: /usr/lib/i386-linux-gnu/libcrypto.so
test/FormTest/FormTest: /usr/lib/i386-linux-gnu/libjpeg.so
test/FormTest/FormTest: /usr/lib/i386-linux-gnu/libfreetype.so
test/FormTest/FormTest: /usr/lib/i386-linux-gnu/libtiff.so
test/FormTest/FormTest: /usr/lib/i386-linux-gnu/libfontconfig.so
test/FormTest/FormTest: /usr/lib/i386-linux-gnu/libz.so
test/FormTest/FormTest: /usr/lib/i386-linux-gnu/libcrypto.so
test/FormTest/FormTest: /usr/lib/i386-linux-gnu/libjpeg.so
test/FormTest/FormTest: /usr/lib/i386-linux-gnu/libfreetype.so
test/FormTest/FormTest: /usr/lib/i386-linux-gnu/libtiff.so
test/FormTest/FormTest: test/FormTest/CMakeFiles/FormTest.dir/build.make
test/FormTest/FormTest: test/FormTest/CMakeFiles/FormTest.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking CXX executable FormTest"
	cd /home/univ/projects/podofomemo/podofo-build/test/FormTest && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/FormTest.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
test/FormTest/CMakeFiles/FormTest.dir/build: test/FormTest/FormTest
.PHONY : test/FormTest/CMakeFiles/FormTest.dir/build

test/FormTest/CMakeFiles/FormTest.dir/requires: test/FormTest/CMakeFiles/FormTest.dir/FormTest.cpp.o.requires
.PHONY : test/FormTest/CMakeFiles/FormTest.dir/requires

test/FormTest/CMakeFiles/FormTest.dir/clean:
	cd /home/univ/projects/podofomemo/podofo-build/test/FormTest && $(CMAKE_COMMAND) -P CMakeFiles/FormTest.dir/cmake_clean.cmake
.PHONY : test/FormTest/CMakeFiles/FormTest.dir/clean

test/FormTest/CMakeFiles/FormTest.dir/depend:
	cd /home/univ/projects/podofomemo/podofo-build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/univ/projects/podofomemo/podofo /home/univ/projects/podofomemo/podofo/test/FormTest /home/univ/projects/podofomemo/podofo-build /home/univ/projects/podofomemo/podofo-build/test/FormTest /home/univ/projects/podofomemo/podofo-build/test/FormTest/CMakeFiles/FormTest.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : test/FormTest/CMakeFiles/FormTest.dir/depend
