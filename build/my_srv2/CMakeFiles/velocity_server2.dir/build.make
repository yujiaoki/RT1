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
CMAKE_SOURCE_DIR = /root/my_ros2/my_ros_ws/src

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /root/my_ros2/my_ros_ws/build

# Include any dependencies generated for this target.
include my_srv2/CMakeFiles/velocity_server2.dir/depend.make

# Include the progress variables for this target.
include my_srv2/CMakeFiles/velocity_server2.dir/progress.make

# Include the compile flags for this target's objects.
include my_srv2/CMakeFiles/velocity_server2.dir/flags.make

my_srv2/CMakeFiles/velocity_server2.dir/src/velocity_server2.cpp.o: my_srv2/CMakeFiles/velocity_server2.dir/flags.make
my_srv2/CMakeFiles/velocity_server2.dir/src/velocity_server2.cpp.o: /root/my_ros2/my_ros_ws/src/my_srv2/src/velocity_server2.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/root/my_ros2/my_ros_ws/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object my_srv2/CMakeFiles/velocity_server2.dir/src/velocity_server2.cpp.o"
	cd /root/my_ros2/my_ros_ws/build/my_srv2 && /usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/velocity_server2.dir/src/velocity_server2.cpp.o -c /root/my_ros2/my_ros_ws/src/my_srv2/src/velocity_server2.cpp

my_srv2/CMakeFiles/velocity_server2.dir/src/velocity_server2.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/velocity_server2.dir/src/velocity_server2.cpp.i"
	cd /root/my_ros2/my_ros_ws/build/my_srv2 && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /root/my_ros2/my_ros_ws/src/my_srv2/src/velocity_server2.cpp > CMakeFiles/velocity_server2.dir/src/velocity_server2.cpp.i

my_srv2/CMakeFiles/velocity_server2.dir/src/velocity_server2.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/velocity_server2.dir/src/velocity_server2.cpp.s"
	cd /root/my_ros2/my_ros_ws/build/my_srv2 && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /root/my_ros2/my_ros_ws/src/my_srv2/src/velocity_server2.cpp -o CMakeFiles/velocity_server2.dir/src/velocity_server2.cpp.s

my_srv2/CMakeFiles/velocity_server2.dir/src/velocity_server2.cpp.o.requires:

.PHONY : my_srv2/CMakeFiles/velocity_server2.dir/src/velocity_server2.cpp.o.requires

my_srv2/CMakeFiles/velocity_server2.dir/src/velocity_server2.cpp.o.provides: my_srv2/CMakeFiles/velocity_server2.dir/src/velocity_server2.cpp.o.requires
	$(MAKE) -f my_srv2/CMakeFiles/velocity_server2.dir/build.make my_srv2/CMakeFiles/velocity_server2.dir/src/velocity_server2.cpp.o.provides.build
.PHONY : my_srv2/CMakeFiles/velocity_server2.dir/src/velocity_server2.cpp.o.provides

my_srv2/CMakeFiles/velocity_server2.dir/src/velocity_server2.cpp.o.provides.build: my_srv2/CMakeFiles/velocity_server2.dir/src/velocity_server2.cpp.o


# Object files for target velocity_server2
velocity_server2_OBJECTS = \
"CMakeFiles/velocity_server2.dir/src/velocity_server2.cpp.o"

# External object files for target velocity_server2
velocity_server2_EXTERNAL_OBJECTS =

/root/my_ros2/my_ros_ws/devel/lib/my_srv2/velocity_server2: my_srv2/CMakeFiles/velocity_server2.dir/src/velocity_server2.cpp.o
/root/my_ros2/my_ros_ws/devel/lib/my_srv2/velocity_server2: my_srv2/CMakeFiles/velocity_server2.dir/build.make
/root/my_ros2/my_ros_ws/devel/lib/my_srv2/velocity_server2: /opt/ros/kinetic/lib/libroscpp.so
/root/my_ros2/my_ros_ws/devel/lib/my_srv2/velocity_server2: /usr/lib/x86_64-linux-gnu/libboost_filesystem.so
/root/my_ros2/my_ros_ws/devel/lib/my_srv2/velocity_server2: /usr/lib/x86_64-linux-gnu/libboost_signals.so
/root/my_ros2/my_ros_ws/devel/lib/my_srv2/velocity_server2: /opt/ros/kinetic/lib/librosconsole.so
/root/my_ros2/my_ros_ws/devel/lib/my_srv2/velocity_server2: /opt/ros/kinetic/lib/librosconsole_log4cxx.so
/root/my_ros2/my_ros_ws/devel/lib/my_srv2/velocity_server2: /opt/ros/kinetic/lib/librosconsole_backend_interface.so
/root/my_ros2/my_ros_ws/devel/lib/my_srv2/velocity_server2: /usr/lib/x86_64-linux-gnu/liblog4cxx.so
/root/my_ros2/my_ros_ws/devel/lib/my_srv2/velocity_server2: /usr/lib/x86_64-linux-gnu/libboost_regex.so
/root/my_ros2/my_ros_ws/devel/lib/my_srv2/velocity_server2: /opt/ros/kinetic/lib/libxmlrpcpp.so
/root/my_ros2/my_ros_ws/devel/lib/my_srv2/velocity_server2: /opt/ros/kinetic/lib/libroscpp_serialization.so
/root/my_ros2/my_ros_ws/devel/lib/my_srv2/velocity_server2: /opt/ros/kinetic/lib/librostime.so
/root/my_ros2/my_ros_ws/devel/lib/my_srv2/velocity_server2: /opt/ros/kinetic/lib/libcpp_common.so
/root/my_ros2/my_ros_ws/devel/lib/my_srv2/velocity_server2: /usr/lib/x86_64-linux-gnu/libboost_system.so
/root/my_ros2/my_ros_ws/devel/lib/my_srv2/velocity_server2: /usr/lib/x86_64-linux-gnu/libboost_thread.so
/root/my_ros2/my_ros_ws/devel/lib/my_srv2/velocity_server2: /usr/lib/x86_64-linux-gnu/libboost_chrono.so
/root/my_ros2/my_ros_ws/devel/lib/my_srv2/velocity_server2: /usr/lib/x86_64-linux-gnu/libboost_date_time.so
/root/my_ros2/my_ros_ws/devel/lib/my_srv2/velocity_server2: /usr/lib/x86_64-linux-gnu/libboost_atomic.so
/root/my_ros2/my_ros_ws/devel/lib/my_srv2/velocity_server2: /usr/lib/x86_64-linux-gnu/libpthread.so
/root/my_ros2/my_ros_ws/devel/lib/my_srv2/velocity_server2: /usr/lib/x86_64-linux-gnu/libconsole_bridge.so
/root/my_ros2/my_ros_ws/devel/lib/my_srv2/velocity_server2: my_srv2/CMakeFiles/velocity_server2.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/root/my_ros2/my_ros_ws/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable /root/my_ros2/my_ros_ws/devel/lib/my_srv2/velocity_server2"
	cd /root/my_ros2/my_ros_ws/build/my_srv2 && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/velocity_server2.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
my_srv2/CMakeFiles/velocity_server2.dir/build: /root/my_ros2/my_ros_ws/devel/lib/my_srv2/velocity_server2

.PHONY : my_srv2/CMakeFiles/velocity_server2.dir/build

my_srv2/CMakeFiles/velocity_server2.dir/requires: my_srv2/CMakeFiles/velocity_server2.dir/src/velocity_server2.cpp.o.requires

.PHONY : my_srv2/CMakeFiles/velocity_server2.dir/requires

my_srv2/CMakeFiles/velocity_server2.dir/clean:
	cd /root/my_ros2/my_ros_ws/build/my_srv2 && $(CMAKE_COMMAND) -P CMakeFiles/velocity_server2.dir/cmake_clean.cmake
.PHONY : my_srv2/CMakeFiles/velocity_server2.dir/clean

my_srv2/CMakeFiles/velocity_server2.dir/depend:
	cd /root/my_ros2/my_ros_ws/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /root/my_ros2/my_ros_ws/src /root/my_ros2/my_ros_ws/src/my_srv2 /root/my_ros2/my_ros_ws/build /root/my_ros2/my_ros_ws/build/my_srv2 /root/my_ros2/my_ros_ws/build/my_srv2/CMakeFiles/velocity_server2.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : my_srv2/CMakeFiles/velocity_server2.dir/depend

