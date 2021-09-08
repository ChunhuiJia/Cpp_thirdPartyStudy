cmake_minimum_required(VERSION 3.0)

project(GFLAGS_STUDY)
find_package(Threads)
#find_package(gflags COMPONENTS nothreads_static)


set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS}  -Wall")
set(CMAKE_BUILD_TYPE Debug)
link_directories(/usr/local/lib)
include_directories(${CMAKE_SOURCE_DIR}/include)

add_executable(main_cmake main.cpp)
#target_link_libraries(main_cmake gflags::gflags)
target_link_libraries (main_cmake gflags ${CMAKE_THREAD_LIBS_INIT})   #link
#target_link_libraries (main_cmake gflags ${BUILD_gflags_LIBS})   #link