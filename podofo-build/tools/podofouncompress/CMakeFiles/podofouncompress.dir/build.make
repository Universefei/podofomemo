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
include tools/podofouncompress/CMakeFiles/podofouncompress.dir/depend.make

# Include the progress variables for this target.
include tools/podofouncompress/CMakeFiles/podofouncompress.dir/progress.make

# Include the compile flags for this target's objects.
include tools/podofouncompress/CMakeFiles/podofouncompress.dir/flags.make

tools/podofouncompress/CMakeFiles/podofouncompress.dir/Uncompress.cpp.o: tools/podofouncompress/CMakeFiles/podofouncompress.dir/flags.make
tools/podofouncompress/CMakeFiles/podofouncompress.dir/Uncompress.cpp.o: /home/univ/projects/podofomemo/podofo/tools/podofouncompress/Uncompress.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/univ/projects/podofomemo/podofo-build/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object tools/podofouncompress/CMakeFiles/podofouncompress.dir/Uncompress.cpp.o"
	cd /home/univ/projects/podofomemo/podofo-build/tools/podofouncompress && /usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/podofouncompress.dir/Uncompress.cpp.o -c /home/univ/projects/podofomemo/podofo/tools/podofouncompress/Uncompress.cpp

tools/podofouncompress/CMakeFiles/podofouncompress.dir/Uncompress.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/podofouncompress.dir/Uncompress.cpp.i"
	cd /home/univ/projects/podofomemo/podofo-build/tools/podofouncompress && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/univ/projects/podofomemo/podofo/tools/podofouncompress/Uncompress.cpp > CMakeFiles/podofouncompress.dir/Uncompress.cpp.i

tools/podofouncompress/CMakeFiles/podofouncompress.dir/Uncompress.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/podofouncompress.dir/Uncompress.cpp.s"
	cd /home/univ/projects/podofomemo/podofo-build/tools/podofouncompress && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/univ/projects/podofomemo/podofo/tools/podofouncompress/Uncompress.cpp -o CMakeFiles/podofouncompress.dir/Uncompress.cpp.s

tools/podofouncompress/CMakeFiles/podofouncompress.dir/Uncompress.cpp.o.requires:
.PHONY : tools/podofouncompress/CMakeFiles/podofouncompress.dir/Uncompress.cpp.o.requires

tools/podofouncompress/CMakeFiles/podofouncompress.dir/Uncompress.cpp.o.provides: tools/podofouncompress/CMakeFiles/podofouncompress.dir/Uncompress.cpp.o.requires
	$(MAKE) -f tools/podofouncompress/CMakeFiles/podofouncompress.dir/build.make tools/podofouncompress/CMakeFiles/podofouncompress.dir/Uncompress.cpp.o.provides.build
.PHONY : tools/podofouncompress/CMakeFiles/podofouncompress.dir/Uncompress.cpp.o.provides

tools/podofouncompress/CMakeFiles/podofouncompress.dir/Uncompress.cpp.o.provides.build: tools/podofouncompress/CMakeFiles/podofouncompress.dir/Uncompress.cpp.o

tools/podofouncompress/CMakeFiles/podofouncompress.dir/podofouncompress.cpp.o: tools/podofouncompress/CMakeFiles/podofouncompress.dir/flags.make
tools/podofouncompress/CMakeFiles/podofouncompress.dir/podofouncompress.cpp.o: /home/univ/projects/podofomemo/podofo/tools/podofouncompress/podofouncompress.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/univ/projects/podofomemo/podofo-build/CMakeFiles $(CMAKE_PROGRESS_2)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object tools/podofouncompress/CMakeFiles/podofouncompress.dir/podofouncompress.cpp.o"
	cd /home/univ/projects/podofomemo/podofo-build/tools/podofouncompress && /usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/podofouncompress.dir/podofouncompress.cpp.o -c /home/univ/projects/podofomemo/podofo/tools/podofouncompress/podofouncompress.cpp

tools/podofouncompress/CMakeFiles/podofouncompress.dir/podofouncompress.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/podofouncompress.dir/podofouncompress.cpp.i"
	cd /home/univ/projects/podofomemo/podofo-build/tools/podofouncompress && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/univ/projects/podofomemo/podofo/tools/podofouncompress/podofouncompress.cpp > CMakeFiles/podofouncompress.dir/podofouncompress.cpp.i

tools/podofouncompress/CMakeFiles/podofouncompress.dir/podofouncompress.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/podofouncompress.dir/podofouncompress.cpp.s"
	cd /home/univ/projects/podofomemo/podofo-build/tools/podofouncompress && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/univ/projects/podofomemo/podofo/tools/podofouncompress/podofouncompress.cpp -o CMakeFiles/podofouncompress.dir/podofouncompress.cpp.s

tools/podofouncompress/CMakeFiles/podofouncompress.dir/podofouncompress.cpp.o.requires:
.PHONY : tools/podofouncompress/CMakeFiles/podofouncompress.dir/podofouncompress.cpp.o.requires

tools/podofouncompress/CMakeFiles/podofouncompress.dir/podofouncompress.cpp.o.provides: tools/podofouncompress/CMakeFiles/podofouncompress.dir/podofouncompress.cpp.o.requires
	$(MAKE) -f tools/podofouncompress/CMakeFiles/podofouncompress.dir/build.make tools/podofouncompress/CMakeFiles/podofouncompress.dir/podofouncompress.cpp.o.provides.build
.PHONY : tools/podofouncompress/CMakeFiles/podofouncompress.dir/podofouncompress.cpp.o.provides

tools/podofouncompress/CMakeFiles/podofouncompress.dir/podofouncompress.cpp.o.provides.build: tools/podofouncompress/CMakeFiles/podofouncompress.dir/podofouncompress.cpp.o

# Object files for target podofouncompress
podofouncompress_OBJECTS = \
"CMakeFiles/podofouncompress.dir/Uncompress.cpp.o" \
"CMakeFiles/podofouncompress.dir/podofouncompress.cpp.o"

# External object files for target podofouncompress
podofouncompress_EXTERNAL_OBJECTS =

tools/podofouncompress/podofouncompress: tools/podofouncompress/CMakeFiles/podofouncompress.dir/Uncompress.cpp.o
tools/podofouncompress/podofouncompress: tools/podofouncompress/CMakeFiles/podofouncompress.dir/podofouncompress.cpp.o
tools/podofouncompress/podofouncompress: /usr/lib/i386-linux-gnu/libfontconfig.so
tools/podofouncompress/podofouncompress: /usr/lib/i386-linux-gnu/libz.so
tools/podofouncompress/podofouncompress: /usr/lib/i386-linux-gnu/libcrypto.so
tools/podofouncompress/podofouncompress: /usr/lib/i386-linux-gnu/libjpeg.so
tools/podofouncompress/podofouncompress: /usr/lib/i386-linux-gnu/libfreetype.so
tools/podofouncompress/podofouncompress: /usr/lib/i386-linux-gnu/libtiff.so
tools/podofouncompress/podofouncompress: tools/podofouncompress/CMakeFiles/podofouncompress.dir/build.make
tools/podofouncompress/podofouncompress: tools/podofouncompress/CMakeFiles/podofouncompress.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking CXX executable podofouncompress"
	cd /home/univ/projects/podofomemo/podofo-build/tools/podofouncompress && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/podofouncompress.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
tools/podofouncompress/CMakeFiles/podofouncompress.dir/build: tools/podofouncompress/podofouncompress
.PHONY : tools/podofouncompress/CMakeFiles/podofouncompress.dir/build

tools/podofouncompress/CMakeFiles/podofouncompress.dir/requires: tools/podofouncompress/CMakeFiles/podofouncompress.dir/Uncompress.cpp.o.requires
tools/podofouncompress/CMakeFiles/podofouncompress.dir/requires: tools/podofouncompress/CMakeFiles/podofouncompress.dir/podofouncompress.cpp.o.requires
.PHONY : tools/podofouncompress/CMakeFiles/podofouncompress.dir/requires

tools/podofouncompress/CMakeFiles/podofouncompress.dir/clean:
	cd /home/univ/projects/podofomemo/podofo-build/tools/podofouncompress && $(CMAKE_COMMAND) -P CMakeFiles/podofouncompress.dir/cmake_clean.cmake
.PHONY : tools/podofouncompress/CMakeFiles/podofouncompress.dir/clean

tools/podofouncompress/CMakeFiles/podofouncompress.dir/depend:
	cd /home/univ/projects/podofomemo/podofo-build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/univ/projects/podofomemo/podofo /home/univ/projects/podofomemo/podofo/tools/podofouncompress /home/univ/projects/podofomemo/podofo-build /home/univ/projects/podofomemo/podofo-build/tools/podofouncompress /home/univ/projects/podofomemo/podofo-build/tools/podofouncompress/CMakeFiles/podofouncompress.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : tools/podofouncompress/CMakeFiles/podofouncompress.dir/depend

