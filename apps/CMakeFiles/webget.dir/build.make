# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.27

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:

# Disable VCS-based implicit rules.
% : %,v

# Disable VCS-based implicit rules.
% : RCS/%

# Disable VCS-based implicit rules.
% : RCS/%,v

# Disable VCS-based implicit rules.
% : SCCS/s.%

# Disable VCS-based implicit rules.
% : s.%

.SUFFIXES: .hpux_make_needs_suffix_list

# Command-line flag to silence nested $(MAKE).
$(VERBOSE)MAKESILENT = -s

#Suppress display of executed commands.
$(VERBOSE).SILENT:

# A target that is always out of date.
cmake_force:
.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/local/bin/cmake

# The command to remove a file.
RM = /usr/local/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/gao/minnow/apps

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/gao/minnow/apps

# Include any dependencies generated for this target.
include CMakeFiles/webget.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/webget.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/webget.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/webget.dir/flags.make

CMakeFiles/webget.dir/webget.cc.o: CMakeFiles/webget.dir/flags.make
CMakeFiles/webget.dir/webget.cc.o: webget.cc
CMakeFiles/webget.dir/webget.cc.o: CMakeFiles/webget.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/gao/minnow/apps/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/webget.dir/webget.cc.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/webget.dir/webget.cc.o -MF CMakeFiles/webget.dir/webget.cc.o.d -o CMakeFiles/webget.dir/webget.cc.o -c /home/gao/minnow/apps/webget.cc

CMakeFiles/webget.dir/webget.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/webget.dir/webget.cc.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/gao/minnow/apps/webget.cc > CMakeFiles/webget.dir/webget.cc.i

CMakeFiles/webget.dir/webget.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/webget.dir/webget.cc.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/gao/minnow/apps/webget.cc -o CMakeFiles/webget.dir/webget.cc.s

# Object files for target webget
webget_OBJECTS = \
"CMakeFiles/webget.dir/webget.cc.o"

# External object files for target webget
webget_EXTERNAL_OBJECTS =

webget: CMakeFiles/webget.dir/webget.cc.o
webget: CMakeFiles/webget.dir/build.make
webget: CMakeFiles/webget.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --bold --progress-dir=/home/gao/minnow/apps/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable webget"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/webget.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/webget.dir/build: webget
.PHONY : CMakeFiles/webget.dir/build

CMakeFiles/webget.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/webget.dir/cmake_clean.cmake
.PHONY : CMakeFiles/webget.dir/clean

CMakeFiles/webget.dir/depend:
	cd /home/gao/minnow/apps && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/gao/minnow/apps /home/gao/minnow/apps /home/gao/minnow/apps /home/gao/minnow/apps /home/gao/minnow/apps/CMakeFiles/webget.dir/DependInfo.cmake "--color=$(COLOR)"
.PHONY : CMakeFiles/webget.dir/depend

