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
CMAKE_SOURCE_DIR = /home/otg

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/otg/build

# Utility rule file for tfs_pch.

# Include the progress variables for this target.
include CMakeFiles/tfs_pch.dir/progress.make

CMakeFiles/tfs_pch: cotire/tfs_CXX_prefix.hxx.gch


cotire/tfs_CXX_prefix.hxx.gch: cotire/tfs_CXX_prefix.hxx
cotire/tfs_CXX_prefix.hxx.gch: cotire/tfs_CXX_prefix.hxx
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/otg/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX precompiled header cotire/tfs_CXX_prefix.hxx.gch"
	cd /home/otg && /usr/bin/cmake -DCOTIRE_BUILD_TYPE:STRING= -DCOTIRE_VERBOSE:BOOL=$(VERBOSE) -P /home/otg/cmake/cotire.cmake precompile /home/otg/build/tfs_CXX_cotire.cmake /home/otg/build/cotire/tfs_CXX_prefix.hxx /home/otg/build/cotire/tfs_CXX_prefix.hxx.gch /home/otg/src/otpch.cpp

cotire/tfs_CXX_prefix.hxx: cotire/tfs_CXX_prefix.cxx
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/otg/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Generating CXX prefix header cotire/tfs_CXX_prefix.hxx"
	/usr/bin/cmake -DCOTIRE_BUILD_TYPE:STRING= -DCOTIRE_VERBOSE:BOOL=$(VERBOSE) -P /home/otg/cmake/cotire.cmake combine /home/otg/build/tfs_CXX_cotire.cmake /home/otg/build/cotire/tfs_CXX_prefix.hxx /home/otg/build/cotire/tfs_CXX_prefix.cxx

cotire/tfs_CXX_prefix.cxx: ../src/otpch.h
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/otg/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Generating CXX prefix source cotire/tfs_CXX_prefix.cxx"
	/usr/bin/cmake -DCOTIRE_BUILD_TYPE:STRING= -DCOTIRE_VERBOSE:BOOL=$(VERBOSE) -P /home/otg/cmake/cotire.cmake combine /home/otg/build/tfs_CXX_cotire.cmake /home/otg/build/cotire/tfs_CXX_prefix.cxx /home/otg/src/otpch.h

tfs_pch: CMakeFiles/tfs_pch
tfs_pch: cotire/tfs_CXX_prefix.hxx.gch
tfs_pch: cotire/tfs_CXX_prefix.hxx
tfs_pch: cotire/tfs_CXX_prefix.cxx
tfs_pch: CMakeFiles/tfs_pch.dir/build.make

.PHONY : tfs_pch

# Rule to build all files generated by this target.
CMakeFiles/tfs_pch.dir/build: tfs_pch

.PHONY : CMakeFiles/tfs_pch.dir/build

CMakeFiles/tfs_pch.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/tfs_pch.dir/cmake_clean.cmake
.PHONY : CMakeFiles/tfs_pch.dir/clean

CMakeFiles/tfs_pch.dir/depend:
	cd /home/otg/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/otg /home/otg /home/otg/build /home/otg/build /home/otg/build/CMakeFiles/tfs_pch.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/tfs_pch.dir/depend

