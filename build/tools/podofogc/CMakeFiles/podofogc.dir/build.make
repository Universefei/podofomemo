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
include tools/podofogc/CMakeFiles/podofogc.dir/depend.make

# Include the progress variables for this target.
include tools/podofogc/CMakeFiles/podofogc.dir/progress.make

# Include the compile flags for this target's objects.
include tools/podofogc/CMakeFiles/podofogc.dir/flags.make

tools/podofogc/CMakeFiles/podofogc.dir/podofogc.cpp.o: tools/podofogc/CMakeFiles/podofogc.dir/flags.make
tools/podofogc/CMakeFiles/podofogc.dir/podofogc.cpp.o: /home/fei/proj/podofomemo/podofoSRC/tools/podofogc/podofogc.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/fei/proj/podofomemo/build/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object tools/podofogc/CMakeFiles/podofogc.dir/podofogc.cpp.o"
	cd /home/fei/proj/podofomemo/build/tools/podofogc && /usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/podofogc.dir/podofogc.cpp.o -c /home/fei/proj/podofomemo/podofoSRC/tools/podofogc/podofogc.cpp

tools/podofogc/CMakeFiles/podofogc.dir/podofogc.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/podofogc.dir/podofogc.cpp.i"
	cd /home/fei/proj/podofomemo/build/tools/podofogc && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/fei/proj/podofomemo/podofoSRC/tools/podofogc/podofogc.cpp > CMakeFiles/podofogc.dir/podofogc.cpp.i

tools/podofogc/CMakeFiles/podofogc.dir/podofogc.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/podofogc.dir/podofogc.cpp.s"
	cd /home/fei/proj/podofomemo/build/tools/podofogc && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/fei/proj/podofomemo/podofoSRC/tools/podofogc/podofogc.cpp -o CMakeFiles/podofogc.dir/podofogc.cpp.s

tools/podofogc/CMakeFiles/podofogc.dir/podofogc.cpp.o.requires:
.PHONY : tools/podofogc/CMakeFiles/podofogc.dir/podofogc.cpp.o.requires

tools/podofogc/CMakeFiles/podofogc.dir/podofogc.cpp.o.provides: tools/podofogc/CMakeFiles/podofogc.dir/podofogc.cpp.o.requires
	$(MAKE) -f tools/podofogc/CMakeFiles/podofogc.dir/build.make tools/podofogc/CMakeFiles/podofogc.dir/podofogc.cpp.o.provides.build
.PHONY : tools/podofogc/CMakeFiles/podofogc.dir/podofogc.cpp.o.provides

tools/podofogc/CMakeFiles/podofogc.dir/podofogc.cpp.o.provides.build: tools/podofogc/CMakeFiles/podofogc.dir/podofogc.cpp.o

# Object files for target podofogc
podofogc_OBJECTS = \
"CMakeFiles/podofogc.dir/podofogc.cpp.o"

# External object files for target podofogc
podofogc_EXTERNAL_OBJECTS =

tools/podofogc/podofogc: tools/podofogc/CMakeFiles/podofogc.dir/podofogc.cpp.o
tools/podofogc/podofogc: tools/podofogc/CMakeFiles/podofogc.dir/build.make
tools/podofogc/podofogc: /usr/lib/x86_64-linux-gnu/libfontconfig.so
tools/podofogc/podofogc: /usr/lib/x86_64-linux-gnu/libz.so
tools/podofogc/podofogc: /usr/lib/x86_64-linux-gnu/libcrypto.so
tools/podofogc/podofogc: /usr/lib/x86_64-linux-gnu/libjpeg.so
tools/podofogc/podofogc: /usr/lib/x86_64-linux-gnu/libfreetype.so
tools/podofogc/podofogc: /usr/lib/x86_64-linux-gnu/libtiff.so
tools/podofogc/podofogc: tools/podofogc/CMakeFiles/podofogc.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking CXX executable podofogc"
	cd /home/fei/proj/podofomemo/build/tools/podofogc && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/podofogc.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
tools/podofogc/CMakeFiles/podofogc.dir/build: tools/podofogc/podofogc
.PHONY : tools/podofogc/CMakeFiles/podofogc.dir/build

tools/podofogc/CMakeFiles/podofogc.dir/requires: tools/podofogc/CMakeFiles/podofogc.dir/podofogc.cpp.o.requires
.PHONY : tools/podofogc/CMakeFiles/podofogc.dir/requires

tools/podofogc/CMakeFiles/podofogc.dir/clean:
	cd /home/fei/proj/podofomemo/build/tools/podofogc && $(CMAKE_COMMAND) -P CMakeFiles/podofogc.dir/cmake_clean.cmake
.PHONY : tools/podofogc/CMakeFiles/podofogc.dir/clean

tools/podofogc/CMakeFiles/podofogc.dir/depend:
	cd /home/fei/proj/podofomemo/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/fei/proj/podofomemo/podofoSRC /home/fei/proj/podofomemo/podofoSRC/tools/podofogc /home/fei/proj/podofomemo/build /home/fei/proj/podofomemo/build/tools/podofogc /home/fei/proj/podofomemo/build/tools/podofogc/CMakeFiles/podofogc.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : tools/podofogc/CMakeFiles/podofogc.dir/depend

