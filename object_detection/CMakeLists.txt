cmake_minimum_required(VERSION 3.12)
project(object_detection)

set(CMAKE_CXX_STANDARD 14)

FIND_PACKAGE(OpenCV REQUIRED )

INCLUDE_DIRECTORIES( ${OPENCV_INCLUDE_DIR} )

ADD_EXECUTABLE(object_detection main.cpp)
TARGET_LINK_LIBRARIES(object_detection ${OpenCV_LIBS})
