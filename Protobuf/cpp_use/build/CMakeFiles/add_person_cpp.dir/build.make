# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.10

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
CMAKE_SOURCE_DIR = /home/novauto/Learn/Cpp_thirdPartyStudy/Protobuf/cpp_use

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/novauto/Learn/Cpp_thirdPartyStudy/Protobuf/cpp_use/build

# Include any dependencies generated for this target.
include CMakeFiles/add_person_cpp.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/add_person_cpp.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/add_person_cpp.dir/flags.make

CMakeFiles/add_person_cpp.dir/add_person.cc.o: CMakeFiles/add_person_cpp.dir/flags.make
CMakeFiles/add_person_cpp.dir/add_person.cc.o: ../add_person.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/novauto/Learn/Cpp_thirdPartyStudy/Protobuf/cpp_use/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/add_person_cpp.dir/add_person.cc.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/add_person_cpp.dir/add_person.cc.o -c /home/novauto/Learn/Cpp_thirdPartyStudy/Protobuf/cpp_use/add_person.cc

CMakeFiles/add_person_cpp.dir/add_person.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/add_person_cpp.dir/add_person.cc.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/novauto/Learn/Cpp_thirdPartyStudy/Protobuf/cpp_use/add_person.cc > CMakeFiles/add_person_cpp.dir/add_person.cc.i

CMakeFiles/add_person_cpp.dir/add_person.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/add_person_cpp.dir/add_person.cc.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/novauto/Learn/Cpp_thirdPartyStudy/Protobuf/cpp_use/add_person.cc -o CMakeFiles/add_person_cpp.dir/add_person.cc.s

CMakeFiles/add_person_cpp.dir/add_person.cc.o.requires:

.PHONY : CMakeFiles/add_person_cpp.dir/add_person.cc.o.requires

CMakeFiles/add_person_cpp.dir/add_person.cc.o.provides: CMakeFiles/add_person_cpp.dir/add_person.cc.o.requires
	$(MAKE) -f CMakeFiles/add_person_cpp.dir/build.make CMakeFiles/add_person_cpp.dir/add_person.cc.o.provides.build
.PHONY : CMakeFiles/add_person_cpp.dir/add_person.cc.o.provides

CMakeFiles/add_person_cpp.dir/add_person.cc.o.provides.build: CMakeFiles/add_person_cpp.dir/add_person.cc.o


CMakeFiles/add_person_cpp.dir/addressbook.pb.cc.o: CMakeFiles/add_person_cpp.dir/flags.make
CMakeFiles/add_person_cpp.dir/addressbook.pb.cc.o: ../addressbook.pb.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/novauto/Learn/Cpp_thirdPartyStudy/Protobuf/cpp_use/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/add_person_cpp.dir/addressbook.pb.cc.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/add_person_cpp.dir/addressbook.pb.cc.o -c /home/novauto/Learn/Cpp_thirdPartyStudy/Protobuf/cpp_use/addressbook.pb.cc

CMakeFiles/add_person_cpp.dir/addressbook.pb.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/add_person_cpp.dir/addressbook.pb.cc.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/novauto/Learn/Cpp_thirdPartyStudy/Protobuf/cpp_use/addressbook.pb.cc > CMakeFiles/add_person_cpp.dir/addressbook.pb.cc.i

CMakeFiles/add_person_cpp.dir/addressbook.pb.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/add_person_cpp.dir/addressbook.pb.cc.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/novauto/Learn/Cpp_thirdPartyStudy/Protobuf/cpp_use/addressbook.pb.cc -o CMakeFiles/add_person_cpp.dir/addressbook.pb.cc.s

CMakeFiles/add_person_cpp.dir/addressbook.pb.cc.o.requires:

.PHONY : CMakeFiles/add_person_cpp.dir/addressbook.pb.cc.o.requires

CMakeFiles/add_person_cpp.dir/addressbook.pb.cc.o.provides: CMakeFiles/add_person_cpp.dir/addressbook.pb.cc.o.requires
	$(MAKE) -f CMakeFiles/add_person_cpp.dir/build.make CMakeFiles/add_person_cpp.dir/addressbook.pb.cc.o.provides.build
.PHONY : CMakeFiles/add_person_cpp.dir/addressbook.pb.cc.o.provides

CMakeFiles/add_person_cpp.dir/addressbook.pb.cc.o.provides.build: CMakeFiles/add_person_cpp.dir/addressbook.pb.cc.o


# Object files for target add_person_cpp
add_person_cpp_OBJECTS = \
"CMakeFiles/add_person_cpp.dir/add_person.cc.o" \
"CMakeFiles/add_person_cpp.dir/addressbook.pb.cc.o"

# External object files for target add_person_cpp
add_person_cpp_EXTERNAL_OBJECTS =

add_person_cpp: CMakeFiles/add_person_cpp.dir/add_person.cc.o
add_person_cpp: CMakeFiles/add_person_cpp.dir/addressbook.pb.cc.o
add_person_cpp: CMakeFiles/add_person_cpp.dir/build.make
add_person_cpp: CMakeFiles/add_person_cpp.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/novauto/Learn/Cpp_thirdPartyStudy/Protobuf/cpp_use/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking CXX executable add_person_cpp"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/add_person_cpp.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/add_person_cpp.dir/build: add_person_cpp

.PHONY : CMakeFiles/add_person_cpp.dir/build

CMakeFiles/add_person_cpp.dir/requires: CMakeFiles/add_person_cpp.dir/add_person.cc.o.requires
CMakeFiles/add_person_cpp.dir/requires: CMakeFiles/add_person_cpp.dir/addressbook.pb.cc.o.requires

.PHONY : CMakeFiles/add_person_cpp.dir/requires

CMakeFiles/add_person_cpp.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/add_person_cpp.dir/cmake_clean.cmake
.PHONY : CMakeFiles/add_person_cpp.dir/clean

CMakeFiles/add_person_cpp.dir/depend:
	cd /home/novauto/Learn/Cpp_thirdPartyStudy/Protobuf/cpp_use/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/novauto/Learn/Cpp_thirdPartyStudy/Protobuf/cpp_use /home/novauto/Learn/Cpp_thirdPartyStudy/Protobuf/cpp_use /home/novauto/Learn/Cpp_thirdPartyStudy/Protobuf/cpp_use/build /home/novauto/Learn/Cpp_thirdPartyStudy/Protobuf/cpp_use/build /home/novauto/Learn/Cpp_thirdPartyStudy/Protobuf/cpp_use/build/CMakeFiles/add_person_cpp.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/add_person_cpp.dir/depend

