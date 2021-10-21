cmake_minimum_required(VERSION 3.0)
PROJECT(EMPLOYEE_SYSTEM)

#set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -std=c++11")
add_compile_options(-g -Wall)
#set( CMAKE_BUILD_TYPE "Debug")

include_directories(/usr/local/include)
link_directories(/usr/local/lib)
set(SRC1 
    add_person.cc 
    addressbook.pb.cc
)
set(SRC2 
    list_people.cc 
    addressbook.pb.cc
)
add_executable(add_person_cpp ${SRC1})
add_executable(list_person_cpp ${SRC2})
target_link_libraries(add_person_cpp protobuf)
target_link_libraries(list_person_cpp protobuf)
