# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.5

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


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
CMAKE_SOURCE_DIR = /home/hpc/convexhull

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/hpc/convexhull/test

# Include any dependencies generated for this target.
include src/CMakeFiles/convexhull_solver.dir/depend.make

# Include the progress variables for this target.
include src/CMakeFiles/convexhull_solver.dir/progress.make

# Include the compile flags for this target's objects.
include src/CMakeFiles/convexhull_solver.dir/flags.make

src/CMakeFiles/convexhull_solver.dir/convexhull_solver.o: src/CMakeFiles/convexhull_solver.dir/flags.make
src/CMakeFiles/convexhull_solver.dir/convexhull_solver.o: ../src/convexhull_solver.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/hpc/convexhull/test/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object src/CMakeFiles/convexhull_solver.dir/convexhull_solver.o"
	cd /home/hpc/convexhull/test/src && /usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/convexhull_solver.dir/convexhull_solver.o -c /home/hpc/convexhull/src/convexhull_solver.cpp

src/CMakeFiles/convexhull_solver.dir/convexhull_solver.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/convexhull_solver.dir/convexhull_solver.i"
	cd /home/hpc/convexhull/test/src && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/hpc/convexhull/src/convexhull_solver.cpp > CMakeFiles/convexhull_solver.dir/convexhull_solver.i

src/CMakeFiles/convexhull_solver.dir/convexhull_solver.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/convexhull_solver.dir/convexhull_solver.s"
	cd /home/hpc/convexhull/test/src && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/hpc/convexhull/src/convexhull_solver.cpp -o CMakeFiles/convexhull_solver.dir/convexhull_solver.s

src/CMakeFiles/convexhull_solver.dir/convexhull_solver.o.requires:

.PHONY : src/CMakeFiles/convexhull_solver.dir/convexhull_solver.o.requires

src/CMakeFiles/convexhull_solver.dir/convexhull_solver.o.provides: src/CMakeFiles/convexhull_solver.dir/convexhull_solver.o.requires
	$(MAKE) -f src/CMakeFiles/convexhull_solver.dir/build.make src/CMakeFiles/convexhull_solver.dir/convexhull_solver.o.provides.build
.PHONY : src/CMakeFiles/convexhull_solver.dir/convexhull_solver.o.provides

src/CMakeFiles/convexhull_solver.dir/convexhull_solver.o.provides.build: src/CMakeFiles/convexhull_solver.dir/convexhull_solver.o


src/CMakeFiles/convexhull_solver.dir/jarvismarch.o: src/CMakeFiles/convexhull_solver.dir/flags.make
src/CMakeFiles/convexhull_solver.dir/jarvismarch.o: ../src/jarvismarch.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/hpc/convexhull/test/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object src/CMakeFiles/convexhull_solver.dir/jarvismarch.o"
	cd /home/hpc/convexhull/test/src && /usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/convexhull_solver.dir/jarvismarch.o -c /home/hpc/convexhull/src/jarvismarch.cpp

src/CMakeFiles/convexhull_solver.dir/jarvismarch.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/convexhull_solver.dir/jarvismarch.i"
	cd /home/hpc/convexhull/test/src && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/hpc/convexhull/src/jarvismarch.cpp > CMakeFiles/convexhull_solver.dir/jarvismarch.i

src/CMakeFiles/convexhull_solver.dir/jarvismarch.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/convexhull_solver.dir/jarvismarch.s"
	cd /home/hpc/convexhull/test/src && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/hpc/convexhull/src/jarvismarch.cpp -o CMakeFiles/convexhull_solver.dir/jarvismarch.s

src/CMakeFiles/convexhull_solver.dir/jarvismarch.o.requires:

.PHONY : src/CMakeFiles/convexhull_solver.dir/jarvismarch.o.requires

src/CMakeFiles/convexhull_solver.dir/jarvismarch.o.provides: src/CMakeFiles/convexhull_solver.dir/jarvismarch.o.requires
	$(MAKE) -f src/CMakeFiles/convexhull_solver.dir/build.make src/CMakeFiles/convexhull_solver.dir/jarvismarch.o.provides.build
.PHONY : src/CMakeFiles/convexhull_solver.dir/jarvismarch.o.provides

src/CMakeFiles/convexhull_solver.dir/jarvismarch.o.provides.build: src/CMakeFiles/convexhull_solver.dir/jarvismarch.o


src/CMakeFiles/convexhull_solver.dir/grahamscan.o: src/CMakeFiles/convexhull_solver.dir/flags.make
src/CMakeFiles/convexhull_solver.dir/grahamscan.o: ../src/grahamscan.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/hpc/convexhull/test/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object src/CMakeFiles/convexhull_solver.dir/grahamscan.o"
	cd /home/hpc/convexhull/test/src && /usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/convexhull_solver.dir/grahamscan.o -c /home/hpc/convexhull/src/grahamscan.cpp

src/CMakeFiles/convexhull_solver.dir/grahamscan.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/convexhull_solver.dir/grahamscan.i"
	cd /home/hpc/convexhull/test/src && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/hpc/convexhull/src/grahamscan.cpp > CMakeFiles/convexhull_solver.dir/grahamscan.i

src/CMakeFiles/convexhull_solver.dir/grahamscan.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/convexhull_solver.dir/grahamscan.s"
	cd /home/hpc/convexhull/test/src && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/hpc/convexhull/src/grahamscan.cpp -o CMakeFiles/convexhull_solver.dir/grahamscan.s

src/CMakeFiles/convexhull_solver.dir/grahamscan.o.requires:

.PHONY : src/CMakeFiles/convexhull_solver.dir/grahamscan.o.requires

src/CMakeFiles/convexhull_solver.dir/grahamscan.o.provides: src/CMakeFiles/convexhull_solver.dir/grahamscan.o.requires
	$(MAKE) -f src/CMakeFiles/convexhull_solver.dir/build.make src/CMakeFiles/convexhull_solver.dir/grahamscan.o.provides.build
.PHONY : src/CMakeFiles/convexhull_solver.dir/grahamscan.o.provides

src/CMakeFiles/convexhull_solver.dir/grahamscan.o.provides.build: src/CMakeFiles/convexhull_solver.dir/grahamscan.o


# Object files for target convexhull_solver
convexhull_solver_OBJECTS = \
"CMakeFiles/convexhull_solver.dir/convexhull_solver.o" \
"CMakeFiles/convexhull_solver.dir/jarvismarch.o" \
"CMakeFiles/convexhull_solver.dir/grahamscan.o"

# External object files for target convexhull_solver
convexhull_solver_EXTERNAL_OBJECTS =

src/convexhull_solver: src/CMakeFiles/convexhull_solver.dir/convexhull_solver.o
src/convexhull_solver: src/CMakeFiles/convexhull_solver.dir/jarvismarch.o
src/convexhull_solver: src/CMakeFiles/convexhull_solver.dir/grahamscan.o
src/convexhull_solver: src/CMakeFiles/convexhull_solver.dir/build.make
src/convexhull_solver: src/CMakeFiles/convexhull_solver.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/hpc/convexhull/test/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Linking CXX executable convexhull_solver"
	cd /home/hpc/convexhull/test/src && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/convexhull_solver.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
src/CMakeFiles/convexhull_solver.dir/build: src/convexhull_solver

.PHONY : src/CMakeFiles/convexhull_solver.dir/build

src/CMakeFiles/convexhull_solver.dir/requires: src/CMakeFiles/convexhull_solver.dir/convexhull_solver.o.requires
src/CMakeFiles/convexhull_solver.dir/requires: src/CMakeFiles/convexhull_solver.dir/jarvismarch.o.requires
src/CMakeFiles/convexhull_solver.dir/requires: src/CMakeFiles/convexhull_solver.dir/grahamscan.o.requires

.PHONY : src/CMakeFiles/convexhull_solver.dir/requires

src/CMakeFiles/convexhull_solver.dir/clean:
	cd /home/hpc/convexhull/test/src && $(CMAKE_COMMAND) -P CMakeFiles/convexhull_solver.dir/cmake_clean.cmake
.PHONY : src/CMakeFiles/convexhull_solver.dir/clean

src/CMakeFiles/convexhull_solver.dir/depend:
	cd /home/hpc/convexhull/test && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/hpc/convexhull /home/hpc/convexhull/src /home/hpc/convexhull/test /home/hpc/convexhull/test/src /home/hpc/convexhull/test/src/CMakeFiles/convexhull_solver.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : src/CMakeFiles/convexhull_solver.dir/depend

