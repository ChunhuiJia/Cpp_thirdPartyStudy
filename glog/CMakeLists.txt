cmake_minimum_required(VERSION 3.0.0)
project(testGLOG)
set(helloSourceFile main.cpp)
# link_directories(/usr/local/lib)
add_compile_options(-g -Wall)
add_executable(hello_out ${helloSourceFile})
target_link_libraries (hello_out glog)

