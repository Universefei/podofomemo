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
include tools/podofobox/CMakeFiles/podofobox.dir/depend.make

# Include the progress variables for this target.
include tools/podofobox/CMakeFiles/podofobox.dir/progress.make

# Include the compile flags for this target's objects.
include tools/podofobox/CMakeFiles/podofobox.dir/flags.make

tools/podofobox/CMakeFiles/podofobox.dir/podofobox.cpp.o: tools/podofobox/CMakeFiles/podofobox.dir/flags.make
tools/podofobox/CMakeFiles/podofobox.dir/podofobox.cpp.o: /home/univ/projects/podofomemo/podofo/tools/podofobox/podofobox.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/univ/projects/podofomemo/podofo-build/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object tools/podofobox/CMakeFiles/podofobox.dir/podofobox.cpp.o"
	cd /home/univ/projects/podofomemo/podofo-build/tools/podofobox && /usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/podofobox.dir/podofobox.cpp.o -c /home/univ/projects/podofomemo/podofo/tools/podofobox/podofobox.cpp

tools/podofobox/CMakeFiles/podofobox.dir/podofobox.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/podofobox.dir/podofobox.cpp.i"
	cd /home/univ/projects/podofomemo/podofo-build/tools/podofobox && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/univ/projects/podofomemo/podofo/tools/podofobox/podofobox.cpp > CMakeFiles/podofobox.dir/podofobox.cpp.i

tools/podofobox/CMakeFiles/podofobox.dir/podofobox.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/podofobox.dir/podofobox.cpp.s"
	cd /home/univ/projects/podofomemo/podofo-build/tools/podofobox && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/univ/projects/podofomemo/podofo/tools/podofobox/podofobox.cpp -o CMakeFiles/podofobox.dir/podofobox.cpp.s

tools/podofobox/CMakeFiles/podofobox.dir/podofobox.cpp.o.requires:
.PHONY : tools/podofobox/CMakeFiles/podofobox.dir/podofobox.cpp.o.requires

tools/podofobox/CMakeFiles/podofobox.dir/podofobox.cpp.o.provides: tools/podofobox/CMakeFiles/podofobox.dir/podofobox.cpp.o.requires
	$(MAKE) -f tools/podofobox/CMakeFiles/podofobox.dir/build.make tools/podofobox/CMakeFiles/podofobox.dir/podofobox.cpp.o.provides.build
.PHONY : tools/podofobox/CMakeFiles/podofobox.dir/podofobox.cpp.o.provides

tools/podofobox/CMakeFiles/podofobox.dir/podofobox.cpp.o.provides.build: tools/podofobox/CMakeFiles/podofobox.dir/podofobox.cpp.o

tools/podofobox/CMakeFiles/podofobox.dir/boxsetter.cpp.o: tools/podofobox/CMakeFiles/podofobox.dir/flags.make
tools/podofobox/CMakeFiles/podofobox.dir/boxsetter.cpp.o: /home/univ/projects/podofomemo/podofo/tools/podofobox/boxsetter.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/univ/projects/podofomemo/podofo-build/CMakeFiles $(CMAKE_PROGRESS_2)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object tools/podofobox/CMakeFiles/podofobox.dir/boxsetter.cpp.o"
	cd /home/univ/projects/podofomemo/podofo-build/tools/podofobox && /usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/podofobox.dir/boxsetter.cpp.o -c /home/univ/projects/podofomemo/podofo/tools/podofobox/boxsetter.cpp

tools/podofobox/CMakeFiles/podofobox.dir/boxsetter.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/podofobox.dir/boxsetter.cpp.i"
	cd /home/univ/projects/podofomemo/podofo-build/tools/podofobox && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/univ/projects/podofomemo/podofo/tools/podofobox/boxsetter.cpp > CMakeFiles/podofobox.dir/boxsetter.cpp.i

tools/podofobox/CMakeFiles/podofobox.dir/boxsetter.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/podofobox.dir/boxsetter.cpp.s"
	cd /home/univ/projects/podofomemo/podofo-build/tools/podofobox && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/univ/projects/podofomemo/podofo/tools/podofobox/boxsetter.cpp -o CMakeFiles/podofobox.dir/boxsetter.cpp.s

tools/podofobox/CMakeFiles/podofobox.dir/boxsetter.cpp.o.requires:
.PHONY : tools/podofobox/CMakeFiles/podofobox.dir/boxsetter.cpp.o.requires

tools/podofobox/CMakeFiles/podofobox.dir/boxsetter.cpp.o.provides: tools/podofobox/CMakeFiles/podofobox.dir/boxsetter.cpp.o.requires
	$(MAKE) -f tools/podofobox/CMakeFiles/podofobox.dir/build.make tools/podofobox/CMakeFiles/podofobox.dir/boxsetter.cpp.o.provides.build
.PHONY : tools/podofobox/CMakeFiles/podofobox.dir/boxsetter.cpp.o.provides

tools/podofobox/CMakeFiles/podofobox.dir/boxsetter.cpp.o.provides.build: tools/podofobox/CMakeFiles/podofobox.dir/boxsetter.cpp.o

# Object files for target podofobox
podofobox_OBJECTS = \
"CMakeFiles/podofobox.dir/podofobox.cpp.o" \
"CMakeFiles/podofobox.dir/boxsetter.cpp.o"

# External object files for target podofobox
podofobox_EXTERNAL_OBJECTS =

tools/podofobox/podofobox: tools/podofobox/CMakeFiles/podofobox.dir/podofobox.cpp.o
tools/podofobox/podofobox: tools/podofobox/CMakeFiles/podofobox.dir/boxsetter.cpp.o
tools/podofobox/podofobox: /usr/lib/i386-linux-gnu/libfontconfig.so
tools/podofobox/podofobox: /usr/lib/i386-linux-gnu/libz.so
tools/podofobox/podofobox: /usr/lib/i386-linux-gnu/libcrypto.so
tools/podofobox/podofobox: /usr/lib/i386-linux-gnu/libjpeg.so
tools/podofobox/podofobox: /usr/lib/i386-linux-gnu/libfreetype.so
tools/podofobox/podofobox: /usr/lib/i386-linux-gnu/libtiff.so
tools/podofobox/podofobox: tools/podofobox/CMakeFiles/podofobox.dir/build.make
tools/podofobox/podofobox: tools/podofobox/CMakeFiles/podofobox.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking CXX executable podofobox"
	cd /home/univ/projects/podofomemo/podofo-build/tools/podofobox && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/podofobox.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
tools/podofobox/CMakeFiles/podofobox.dir/build: tools/podofobox/podofobox
.PHONY : tools/podofobox/CMakeFiles/podofobox.dir/build

tools/podofobox/CMakeFiles/podofobox.dir/requires: tools/podofobox/CMakeFiles/podofobox.dir/podofobox.cpp.o.requires
tools/podofobox/CMakeFiles/podofobox.dir/requires: tools/podofobox/CMakeFiles/podofobox.dir/boxsetter.cpp.o.requires
.PHONY : tools/podofobox/CMakeFiles/podofobox.dir/requires

tools/podofobox/CMakeFiles/podofobox.dir/clean:
	cd /home/univ/projects/podofomemo/podofo-build/tools/podofobox && $(CMAKE_COMMAND) -P CMakeFiles/podofobox.dir/cmake_clean.cmake
.PHONY : tools/podofobox/CMakeFiles/podofobox.dir/clean

tools/podofobox/CMakeFiles/podofobox.dir/depend:
	cd /home/univ/projects/podofomemo/podofo-build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/univ/projects/podofomemo/podofo /home/univ/projects/podofomemo/podofo/tools/podofobox /home/univ/projects/podofomemo/podofo-build /home/univ/projects/podofomemo/podofo-build/tools/podofobox /home/univ/projects/podofomemo/podofo-build/tools/podofobox/CMakeFiles/podofobox.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : tools/podofobox/CMakeFiles/podofobox.dir/depend

