cmake_minimum_required(VERSION 3.16)
project(TDSS VERSION 1.0.0)

set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_FLAGS_DEBUG_INIT "-g -Wall -Wextra")
set(CMAKE_CXX_FLAGS_RELEASE_INIT "-02")
set(CMAKE_EXPORT_COMPILE_COMMANDS ON)

add_executable(tdss main.cpp)

target_link_libraries(tdss GL GLU glut m)