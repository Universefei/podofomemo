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
include tools/podofoincrementalupdates/CMakeFiles/podofoincrementalupdates.dir/depend.make

# Include the progress variables for this target.
include tools/podofoincrementalupdates/CMakeFiles/podofoincrementalupdates.dir/progress.make

# Include the compile flags for this target's objects.
include tools/podofoincrementalupdates/CMakeFiles/podofoincrementalupdates.dir/flags.make

tools/podofoincrementalupdates/CMakeFiles/podofoincrementalupdates.dir/incrementalupdates.cpp.o: tools/podofoincrementalupdates/CMakeFiles/podofoincrementalupdates.dir/flags.make
tools/podofoincrementalupdates/CMakeFiles/podofoincrementalupdates.dir/incrementalupdates.cpp.o: /home/univ/projects/podofomemo/podofo/tools/podofoincrementalupdates/incrementalupdates.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/univ/projects/podofomemo/podofo-build/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object tools/podofoincrementalupdates/CMakeFiles/podofoincrementalupdates.dir/incrementalupdates.cpp.o"
	cd /home/univ/projects/podofomemo/podofo-build/tools/podofoincrementalupdates && /usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/podofoincrementalupdates.dir/incrementalupdates.cpp.o -c /home/univ/projects/podofomemo/podofo/tools/podofoincrementalupdates/incrementalupdates.cpp

tools/podofoincrementalupdates/CMakeFiles/podofoincrementalupdates.dir/incrementalupdates.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/podofoincrementalupdates.dir/incrementalupdates.cpp.i"
	cd /home/univ/projects/podofomemo/podofo-build/tools/podofoincrementalupdates && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/univ/projects/podofomemo/podofo/tools/podofoincrementalupdates/incrementalupdates.cpp > CMakeFiles/podofoincrementalupdates.dir/incrementalupdates.cpp.i

tools/podofoincrementalupdates/CMakeFiles/podofoincrementalupdates.dir/incrementalupdates.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/podofoincrementalupdates.dir/incrementalupdates.cpp.s"
	cd /home/univ/projects/podofomemo/podofo-build/tools/podofoincrementalupdates && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/univ/projects/podofomemo/podofo/tools/podofoincrementalupdates/incrementalupdates.cpp -o CMakeFiles/podofoincrementalupdates.dir/incrementalupdates.cpp.s

tools/podofoincrementalupdates/CMakeFiles/podofoincrementalupdates.dir/incrementalupdates.cpp.o.requires:
.PHONY : tools/podofoincrementalupdates/CMakeFiles/podofoincrementalupdates.dir/incrementalupdates.cpp.o.requires

tools/podofoincrementalupdates/CMakeFiles/podofoincrementalupdates.dir/incrementalupdates.cpp.o.provides: tools/podofoincrementalupdates/CMakeFiles/podofoincrementalupdates.dir/incrementalupdates.cpp.o.requires
	$(MAKE) -f tools/podofoincrementalupdates/CMakeFiles/podofoincrementalupdates.dir/build.make tools/podofoincrementalupdates/CMakeFiles/podofoincrementalupdates.dir/incrementalupdates.cpp.o.provides.build
.PHONY : tools/podofoincrementalupdates/CMakeFiles/podofoincrementalupdates.dir/incrementalupdates.cpp.o.provides

tools/podofoincrementalupdates/CMakeFiles/podofoincrementalupdates.dir/incrementalupdates.cpp.o.provides.build: tools/podofoincrementalupdates/CMakeFiles/podofoincrementalupdates.dir/incrementalupdates.cpp.o

# Object files for target podofoincrementalupdates
podofoincrementalupdates_OBJECTS = \
"CMakeFiles/podofoincrementalupdates.dir/incrementalupdates.cpp.o"

# External object files for target podofoincrementalupdates
podofoincrementalupdates_EXTERNAL_OBJECTS =

tools/podofoincrementalupdates/podofoincrementalupdates: tools/podofoincrementalupdates/CMakeFiles/podofoincrementalupdates.dir/incrementalupdates.cpp.o
tools/podofoincrementalupdates/podofoincrementalupdates: /usr/lib/i386-linux-gnu/libfontconfig.so
tools/podofoincrementalupdates/podofoincrementalupdates: /usr/lib/i386-linux-gnu/libz.so
tools/podofoincrementalupdates/podofoincrementalupdates: /usr/lib/i386-linux-gnu/libcrypto.so
tools/podofoincrementalupdates/podofoincrementalupdates: /usr/lib/i386-linux-gnu/libjpeg.so
tools/podofoincrementalupdates/podofoincrementalupdates: /usr/lib/i386-linux-gnu/libfreetype.so
tools/podofoincrementalupdates/podofoincrementalupdates: /usr/lib/i386-linux-gnu/libtiff.so
tools/podofoincrementalupdates/podofoincrementalupdates: tools/podofoincrementalupdates/CMakeFiles/podofoincrementalupdates.dir/build.make
tools/podofoincrementalupdates/podofoincrementalupdates: tools/podofoincrementalupdates/CMakeFiles/podofoincrementalupdates.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking CXX executable podofoincrementalupdates"
	cd /home/univ/projects/podofomemo/podofo-build/tools/podofoincrementalupdates && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/podofoincrementalupdates.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
tools/podofoincrementalupdates/CMakeFiles/podofoincrementalupdates.dir/build: tools/podofoincrementalupdates/podofoincrementalupdates
.PHONY : tools/podofoincrementalupdates/CMakeFiles/podofoincrementalupdates.dir/build

tools/podofoincrementalupdates/CMakeFiles/podofoincrementalupdates.dir/requires: tools/podofoincrementalupdates/CMakeFiles/podofoincrementalupdates.dir/incrementalupdates.cpp.o.requires
.PHONY : tools/podofoincrementalupdates/CMakeFiles/podofoincrementalupdates.dir/requires

tools/podofoincrementalupdates/CMakeFiles/podofoincrementalupdates.dir/clean:
	cd /home/univ/projects/podofomemo/podofo-build/tools/podofoincrementalupdates && $(CMAKE_COMMAND) -P CMakeFiles/podofoincrementalupdates.dir/cmake_clean.cmake
.PHONY : tools/podofoincrementalupdates/CMakeFiles/podofoincrementalupdates.dir/clean

tools/podofoincrementalupdates/CMakeFiles/podofoincrementalupdates.dir/depend:
	cd /home/univ/projects/podofomemo/podofo-build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/univ/projects/podofomemo/podofo /home/univ/projects/podofomemo/podofo/tools/podofoincrementalupdates /home/univ/projects/podofomemo/podofo-build /home/univ/projects/podofomemo/podofo-build/tools/podofoincrementalupdates /home/univ/projects/podofomemo/podofo-build/tools/podofoincrementalupdates/CMakeFiles/podofoincrementalupdates.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : tools/podofoincrementalupdates/CMakeFiles/podofoincrementalupdates.dir/depend
