cmake_minimum_required(VERSION 3.12)
project(armorFinder)

set(CMAKE_CXX_STANDARD 11)

FIND_PACKAGE(OpenCV REQUIRED )

INCLUDE_DIRECTORIES( ${OPENCV_INCLUDE_DIR} )

ADD_EXECUTABLE(armorFinder main.cpp armorfind.cpp armorfind.h)
TARGET_LINK_LIBRARIES(armorFinder ${OpenCV_LIBS})

add_executable(AF main.cpp armorfind.cpp armorfind.h)