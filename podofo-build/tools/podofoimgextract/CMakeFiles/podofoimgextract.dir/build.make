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
include tools/podofoimgextract/CMakeFiles/podofoimgextract.dir/depend.make

# Include the progress variables for this target.
include tools/podofoimgextract/CMakeFiles/podofoimgextract.dir/progress.make

# Include the compile flags for this target's objects.
include tools/podofoimgextract/CMakeFiles/podofoimgextract.dir/flags.make

tools/podofoimgextract/CMakeFiles/podofoimgextract.dir/ImageExtractor.cpp.o: tools/podofoimgextract/CMakeFiles/podofoimgextract.dir/flags.make
tools/podofoimgextract/CMakeFiles/podofoimgextract.dir/ImageExtractor.cpp.o: /home/univ/projects/podofomemo/podofo/tools/podofoimgextract/ImageExtractor.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/univ/projects/podofomemo/podofo-build/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object tools/podofoimgextract/CMakeFiles/podofoimgextract.dir/ImageExtractor.cpp.o"
	cd /home/univ/projects/podofomemo/podofo-build/tools/podofoimgextract && /usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/podofoimgextract.dir/ImageExtractor.cpp.o -c /home/univ/projects/podofomemo/podofo/tools/podofoimgextract/ImageExtractor.cpp

tools/podofoimgextract/CMakeFiles/podofoimgextract.dir/ImageExtractor.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/podofoimgextract.dir/ImageExtractor.cpp.i"
	cd /home/univ/projects/podofomemo/podofo-build/tools/podofoimgextract && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/univ/projects/podofomemo/podofo/tools/podofoimgextract/ImageExtractor.cpp > CMakeFiles/podofoimgextract.dir/ImageExtractor.cpp.i

tools/podofoimgextract/CMakeFiles/podofoimgextract.dir/ImageExtractor.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/podofoimgextract.dir/ImageExtractor.cpp.s"
	cd /home/univ/projects/podofomemo/podofo-build/tools/podofoimgextract && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/univ/projects/podofomemo/podofo/tools/podofoimgextract/ImageExtractor.cpp -o CMakeFiles/podofoimgextract.dir/ImageExtractor.cpp.s

tools/podofoimgextract/CMakeFiles/podofoimgextract.dir/ImageExtractor.cpp.o.requires:
.PHONY : tools/podofoimgextract/CMakeFiles/podofoimgextract.dir/ImageExtractor.cpp.o.requires

tools/podofoimgextract/CMakeFiles/podofoimgextract.dir/ImageExtractor.cpp.o.provides: tools/podofoimgextract/CMakeFiles/podofoimgextract.dir/ImageExtractor.cpp.o.requires
	$(MAKE) -f tools/podofoimgextract/CMakeFiles/podofoimgextract.dir/build.make tools/podofoimgextract/CMakeFiles/podofoimgextract.dir/ImageExtractor.cpp.o.provides.build
.PHONY : tools/podofoimgextract/CMakeFiles/podofoimgextract.dir/ImageExtractor.cpp.o.provides

tools/podofoimgextract/CMakeFiles/podofoimgextract.dir/ImageExtractor.cpp.o.provides.build: tools/podofoimgextract/CMakeFiles/podofoimgextract.dir/ImageExtractor.cpp.o

tools/podofoimgextract/CMakeFiles/podofoimgextract.dir/podofoimgextract.cpp.o: tools/podofoimgextract/CMakeFiles/podofoimgextract.dir/flags.make
tools/podofoimgextract/CMakeFiles/podofoimgextract.dir/podofoimgextract.cpp.o: /home/univ/projects/podofomemo/podofo/tools/podofoimgextract/podofoimgextract.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/univ/projects/podofomemo/podofo-build/CMakeFiles $(CMAKE_PROGRESS_2)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object tools/podofoimgextract/CMakeFiles/podofoimgextract.dir/podofoimgextract.cpp.o"
	cd /home/univ/projects/podofomemo/podofo-build/tools/podofoimgextract && /usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/podofoimgextract.dir/podofoimgextract.cpp.o -c /home/univ/projects/podofomemo/podofo/tools/podofoimgextract/podofoimgextract.cpp

tools/podofoimgextract/CMakeFiles/podofoimgextract.dir/podofoimgextract.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/podofoimgextract.dir/podofoimgextract.cpp.i"
	cd /home/univ/projects/podofomemo/podofo-build/tools/podofoimgextract && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/univ/projects/podofomemo/podofo/tools/podofoimgextract/podofoimgextract.cpp > CMakeFiles/podofoimgextract.dir/podofoimgextract.cpp.i

tools/podofoimgextract/CMakeFiles/podofoimgextract.dir/podofoimgextract.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/podofoimgextract.dir/podofoimgextract.cpp.s"
	cd /home/univ/projects/podofomemo/podofo-build/tools/podofoimgextract && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/univ/projects/podofomemo/podofo/tools/podofoimgextract/podofoimgextract.cpp -o CMakeFiles/podofoimgextract.dir/podofoimgextract.cpp.s

tools/podofoimgextract/CMakeFiles/podofoimgextract.dir/podofoimgextract.cpp.o.requires:
.PHONY : tools/podofoimgextract/CMakeFiles/podofoimgextract.dir/podofoimgextract.cpp.o.requires

tools/podofoimgextract/CMakeFiles/podofoimgextract.dir/podofoimgextract.cpp.o.provides: tools/podofoimgextract/CMakeFiles/podofoimgextract.dir/podofoimgextract.cpp.o.requires
	$(MAKE) -f tools/podofoimgextract/CMakeFiles/podofoimgextract.dir/build.make tools/podofoimgextract/CMakeFiles/podofoimgextract.dir/podofoimgextract.cpp.o.provides.build
.PHONY : tools/podofoimgextract/CMakeFiles/podofoimgextract.dir/podofoimgextract.cpp.o.provides

tools/podofoimgextract/CMakeFiles/podofoimgextract.dir/podofoimgextract.cpp.o.provides.build: tools/podofoimgextract/CMakeFiles/podofoimgextract.dir/podofoimgextract.cpp.o

# Object files for target podofoimgextract
podofoimgextract_OBJECTS = \
"CMakeFiles/podofoimgextract.dir/ImageExtractor.cpp.o" \
"CMakeFiles/podofoimgextract.dir/podofoimgextract.cpp.o"

# External object files for target podofoimgextract
podofoimgextract_EXTERNAL_OBJECTS =

tools/podofoimgextract/podofoimgextract: tools/podofoimgextract/CMakeFiles/podofoimgextract.dir/ImageExtractor.cpp.o
tools/podofoimgextract/podofoimgextract: tools/podofoimgextract/CMakeFiles/podofoimgextract.dir/podofoimgextract.cpp.o
tools/podofoimgextract/podofoimgextract: /usr/lib/i386-linux-gnu/libfontconfig.so
tools/podofoimgextract/podofoimgextract: /usr/lib/i386-linux-gnu/libz.so
tools/podofoimgextract/podofoimgextract: /usr/lib/i386-linux-gnu/libcrypto.so
tools/podofoimgextract/podofoimgextract: /usr/lib/i386-linux-gnu/libjpeg.so
tools/podofoimgextract/podofoimgextract: /usr/lib/i386-linux-gnu/libfreetype.so
tools/podofoimgextract/podofoimgextract: /usr/lib/i386-linux-gnu/libtiff.so
tools/podofoimgextract/podofoimgextract: tools/podofoimgextract/CMakeFiles/podofoimgextract.dir/build.make
tools/podofoimgextract/podofoimgextract: tools/podofoimgextract/CMakeFiles/podofoimgextract.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking CXX executable podofoimgextract"
	cd /home/univ/projects/podofomemo/podofo-build/tools/podofoimgextract && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/podofoimgextract.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
tools/podofoimgextract/CMakeFiles/podofoimgextract.dir/build: tools/podofoimgextract/podofoimgextract
.PHONY : tools/podofoimgextract/CMakeFiles/podofoimgextract.dir/build

tools/podofoimgextract/CMakeFiles/podofoimgextract.dir/requires: tools/podofoimgextract/CMakeFiles/podofoimgextract.dir/ImageExtractor.cpp.o.requires
tools/podofoimgextract/CMakeFiles/podofoimgextract.dir/requires: tools/podofoimgextract/CMakeFiles/podofoimgextract.dir/podofoimgextract.cpp.o.requires
.PHONY : tools/podofoimgextract/CMakeFiles/podofoimgextract.dir/requires

tools/podofoimgextract/CMakeFiles/podofoimgextract.dir/clean:
	cd /home/univ/projects/podofomemo/podofo-build/tools/podofoimgextract && $(CMAKE_COMMAND) -P CMakeFiles/podofoimgextract.dir/cmake_clean.cmake
.PHONY : tools/podofoimgextract/CMakeFiles/podofoimgextract.dir/clean

tools/podofoimgextract/CMakeFiles/podofoimgextract.dir/depend:
	cd /home/univ/projects/podofomemo/podofo-build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/univ/projects/podofomemo/podofo /home/univ/projects/podofomemo/podofo/tools/podofoimgextract /home/univ/projects/podofomemo/podofo-build /home/univ/projects/podofomemo/podofo-build/tools/podofoimgextract /home/univ/projects/podofomemo/podofo-build/tools/podofoimgextract/CMakeFiles/podofoimgextract.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : tools/podofoimgextract/CMakeFiles/podofoimgextract.dir/depend

