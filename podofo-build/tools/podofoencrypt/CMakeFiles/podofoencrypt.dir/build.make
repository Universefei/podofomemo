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
include tools/podofoencrypt/CMakeFiles/podofoencrypt.dir/depend.make

# Include the progress variables for this target.
include tools/podofoencrypt/CMakeFiles/podofoencrypt.dir/progress.make

# Include the compile flags for this target's objects.
include tools/podofoencrypt/CMakeFiles/podofoencrypt.dir/flags.make

tools/podofoencrypt/CMakeFiles/podofoencrypt.dir/podofoencrypt.cpp.o: tools/podofoencrypt/CMakeFiles/podofoencrypt.dir/flags.make
tools/podofoencrypt/CMakeFiles/podofoencrypt.dir/podofoencrypt.cpp.o: /home/univ/projects/podofomemo/podofo/tools/podofoencrypt/podofoencrypt.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/univ/projects/podofomemo/podofo-build/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object tools/podofoencrypt/CMakeFiles/podofoencrypt.dir/podofoencrypt.cpp.o"
	cd /home/univ/projects/podofomemo/podofo-build/tools/podofoencrypt && /usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/podofoencrypt.dir/podofoencrypt.cpp.o -c /home/univ/projects/podofomemo/podofo/tools/podofoencrypt/podofoencrypt.cpp

tools/podofoencrypt/CMakeFiles/podofoencrypt.dir/podofoencrypt.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/podofoencrypt.dir/podofoencrypt.cpp.i"
	cd /home/univ/projects/podofomemo/podofo-build/tools/podofoencrypt && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/univ/projects/podofomemo/podofo/tools/podofoencrypt/podofoencrypt.cpp > CMakeFiles/podofoencrypt.dir/podofoencrypt.cpp.i

tools/podofoencrypt/CMakeFiles/podofoencrypt.dir/podofoencrypt.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/podofoencrypt.dir/podofoencrypt.cpp.s"
	cd /home/univ/projects/podofomemo/podofo-build/tools/podofoencrypt && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/univ/projects/podofomemo/podofo/tools/podofoencrypt/podofoencrypt.cpp -o CMakeFiles/podofoencrypt.dir/podofoencrypt.cpp.s

tools/podofoencrypt/CMakeFiles/podofoencrypt.dir/podofoencrypt.cpp.o.requires:
.PHONY : tools/podofoencrypt/CMakeFiles/podofoencrypt.dir/podofoencrypt.cpp.o.requires

tools/podofoencrypt/CMakeFiles/podofoencrypt.dir/podofoencrypt.cpp.o.provides: tools/podofoencrypt/CMakeFiles/podofoencrypt.dir/podofoencrypt.cpp.o.requires
	$(MAKE) -f tools/podofoencrypt/CMakeFiles/podofoencrypt.dir/build.make tools/podofoencrypt/CMakeFiles/podofoencrypt.dir/podofoencrypt.cpp.o.provides.build
.PHONY : tools/podofoencrypt/CMakeFiles/podofoencrypt.dir/podofoencrypt.cpp.o.provides

tools/podofoencrypt/CMakeFiles/podofoencrypt.dir/podofoencrypt.cpp.o.provides.build: tools/podofoencrypt/CMakeFiles/podofoencrypt.dir/podofoencrypt.cpp.o

# Object files for target podofoencrypt
podofoencrypt_OBJECTS = \
"CMakeFiles/podofoencrypt.dir/podofoencrypt.cpp.o"

# External object files for target podofoencrypt
podofoencrypt_EXTERNAL_OBJECTS =

tools/podofoencrypt/podofoencrypt: tools/podofoencrypt/CMakeFiles/podofoencrypt.dir/podofoencrypt.cpp.o
tools/podofoencrypt/podofoencrypt: /usr/lib/i386-linux-gnu/libfontconfig.so
tools/podofoencrypt/podofoencrypt: /usr/lib/i386-linux-gnu/libz.so
tools/podofoencrypt/podofoencrypt: /usr/lib/i386-linux-gnu/libcrypto.so
tools/podofoencrypt/podofoencrypt: /usr/lib/i386-linux-gnu/libjpeg.so
tools/podofoencrypt/podofoencrypt: /usr/lib/i386-linux-gnu/libfreetype.so
tools/podofoencrypt/podofoencrypt: /usr/lib/i386-linux-gnu/libtiff.so
tools/podofoencrypt/podofoencrypt: tools/podofoencrypt/CMakeFiles/podofoencrypt.dir/build.make
tools/podofoencrypt/podofoencrypt: tools/podofoencrypt/CMakeFiles/podofoencrypt.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking CXX executable podofoencrypt"
	cd /home/univ/projects/podofomemo/podofo-build/tools/podofoencrypt && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/podofoencrypt.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
tools/podofoencrypt/CMakeFiles/podofoencrypt.dir/build: tools/podofoencrypt/podofoencrypt
.PHONY : tools/podofoencrypt/CMakeFiles/podofoencrypt.dir/build

tools/podofoencrypt/CMakeFiles/podofoencrypt.dir/requires: tools/podofoencrypt/CMakeFiles/podofoencrypt.dir/podofoencrypt.cpp.o.requires
.PHONY : tools/podofoencrypt/CMakeFiles/podofoencrypt.dir/requires

tools/podofoencrypt/CMakeFiles/podofoencrypt.dir/clean:
	cd /home/univ/projects/podofomemo/podofo-build/tools/podofoencrypt && $(CMAKE_COMMAND) -P CMakeFiles/podofoencrypt.dir/cmake_clean.cmake
.PHONY : tools/podofoencrypt/CMakeFiles/podofoencrypt.dir/clean

tools/podofoencrypt/CMakeFiles/podofoencrypt.dir/depend:
	cd /home/univ/projects/podofomemo/podofo-build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/univ/projects/podofomemo/podofo /home/univ/projects/podofomemo/podofo/tools/podofoencrypt /home/univ/projects/podofomemo/podofo-build /home/univ/projects/podofomemo/podofo-build/tools/podofoencrypt /home/univ/projects/podofomemo/podofo-build/tools/podofoencrypt/CMakeFiles/podofoencrypt.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : tools/podofoencrypt/CMakeFiles/podofoencrypt.dir/depend
