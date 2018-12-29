cmake_minimum_required(VERSION 3.12)
project(untitled1)

find_package(OpenCV REQUIRED)

set(CMAKE_CXX_STANDARD 14)

add_executable(untitled1 main.cpp )

include_directories(${OpenCV_INCLUDE_DIRS})
target_link_libraries(untitled1 ${OpenCV_LIBS}) # replace binary_name