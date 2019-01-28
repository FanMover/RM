cmake_minimum_required(VERSION 3.12)
project(RM)

set(CMAKE_CXX_STANDARD 14)

include_directories(image_segmentation/imageSegmentation/HomeWork_2/Homework_2_fanmoshang)
include_directories(object_detection/armorFind_demo)
include_directories(object_detection/CamshiftTracker/camshift)
include_directories(RM2018-DJTU-VisionOpenSource/InfantryVisionFinal)
include_directories(RM2018-DJTU-VisionOpenSource/InfantryVisionFinal/include)
include_directories(RM2018-DJTU-VisionOpenSource/InfantryVisionFinal/include/AddBullet)
include_directories(RM2018-DJTU-VisionOpenSource/InfantryVisionFinal/include/ArmorFind)
include_directories(RM2018-DJTU-VisionOpenSource/InfantryVisionFinal/include/Camera)
include_directories(RM2018-DJTU-VisionOpenSource/InfantryVisionFinal/include/Serial)
include_directories(RM2018-DJTU-VisionOpenSource/InfantryVisionFinal/include/Sudoku)
include_directories(RM2018-DJTU-VisionOpenSource/InfantryVisionFinal/include/Sudoku/digitver)
include_directories(RM2018-DJTU-VisionOpenSource/Stereo_Calib)
include_directories("rubiks3-solve/Xcode/Rubiks Cube Solver")

add_executable(RM
        Hough_transform/main.cpp
        image_segmentation/imageSegmentation/HomeWork_2/Homework_2_fanmoshang/main.cpp
        image_segmentation/imageSegmentation/HomeWork_2/Homework_2_fanmoshang/ThresholdMethods.cpp
        image_segmentation/imageSegmentation/HomeWork_2/Homework_2_fanmoshang/ThresholdMethods.h
        image_segmentation/imageSegmentation/HomeWork_2/Homework_2_fanmoshang/WatershedMethod.cpp
        image_segmentation/imageSegmentation/HomeWork_2/Homework_2_fanmoshang/WatershedMethod.h
        object_detection/armorFind_demo/armorfind.cpp
        object_detection/armorFind_demo/armorfind.h
        object_detection/armorFind_demo/Header.h
        object_detection/armorFind_demo/main.cpp
        object_detection/CamshiftTracker/camshift/camShiftTracking.h
        object_detection/CamshiftTracker/camshift/classTest.cpp
        object_detection/CamshiftTracker/camshift/getInitialRect.h
        object_detection/main.cpp
        RM2018-DJTU-VisionOpenSource/InfantryVisionFinal/include/AddBullet/BulletVision.h
        RM2018-DJTU-VisionOpenSource/InfantryVisionFinal/include/ArmorFind/armorfind.h
        RM2018-DJTU-VisionOpenSource/InfantryVisionFinal/include/ArmorFind/armorpredict.h
        RM2018-DJTU-VisionOpenSource/InfantryVisionFinal/include/Camera/RMVideoCapture.hpp
        RM2018-DJTU-VisionOpenSource/InfantryVisionFinal/include/Camera/StereoXML.h
        RM2018-DJTU-VisionOpenSource/InfantryVisionFinal/include/Serial/CRC_Check.h
        RM2018-DJTU-VisionOpenSource/InfantryVisionFinal/include/Serial/serial.h
        RM2018-DJTU-VisionOpenSource/InfantryVisionFinal/include/Sudoku/digitver/caffe_prototype.h
        RM2018-DJTU-VisionOpenSource/InfantryVisionFinal/include/Sudoku/digitver/HandWritingSolver.h
        RM2018-DJTU-VisionOpenSource/InfantryVisionFinal/include/Sudoku/digitver/ImageProcess.h
        RM2018-DJTU-VisionOpenSource/InfantryVisionFinal/include/Sudoku/digitver/LedNumberSolver.h
        RM2018-DJTU-VisionOpenSource/InfantryVisionFinal/include/Sudoku/digitver/LogicProcess.h
        RM2018-DJTU-VisionOpenSource/InfantryVisionFinal/include/Sudoku/InitParam.h
        RM2018-DJTU-VisionOpenSource/InfantryVisionFinal/include/Sudoku/TString.h
        RM2018-DJTU-VisionOpenSource/InfantryVisionFinal/include/Header.h
        RM2018-DJTU-VisionOpenSource/InfantryVisionFinal/include/WatchDog.h
        RM2018-DJTU-VisionOpenSource/InfantryVisionFinal/src/AddBullet/BulletVision.cpp
        RM2018-DJTU-VisionOpenSource/InfantryVisionFinal/src/ArmorFind/armorfind.cpp
        RM2018-DJTU-VisionOpenSource/InfantryVisionFinal/src/ArmorFind/armorpredict.cpp
        RM2018-DJTU-VisionOpenSource/InfantryVisionFinal/src/Camera/RMVideoCapture.cpp
        RM2018-DJTU-VisionOpenSource/InfantryVisionFinal/src/Camera/StereoXML.cpp
        RM2018-DJTU-VisionOpenSource/InfantryVisionFinal/src/Serial/CRC_Check.cpp
        RM2018-DJTU-VisionOpenSource/InfantryVisionFinal/src/Serial/serial.cpp
        RM2018-DJTU-VisionOpenSource/InfantryVisionFinal/src/Sudoku/digitver/caffe_prototype.cpp
        RM2018-DJTU-VisionOpenSource/InfantryVisionFinal/src/Sudoku/digitver/HandWritingSolver.cpp
        RM2018-DJTU-VisionOpenSource/InfantryVisionFinal/src/Sudoku/digitver/ImageProcess.cpp
        RM2018-DJTU-VisionOpenSource/InfantryVisionFinal/src/Sudoku/digitver/LedNumberSolver.cpp
        RM2018-DJTU-VisionOpenSource/InfantryVisionFinal/src/Sudoku/digitver/LogicProcess.cpp
        RM2018-DJTU-VisionOpenSource/InfantryVisionFinal/src/Sudoku/InitParam.cpp
        RM2018-DJTU-VisionOpenSource/InfantryVisionFinal/src/Sudoku/TString.cpp
        RM2018-DJTU-VisionOpenSource/InfantryVisionFinal/src/WatchDog.cpp
        RM2018-DJTU-VisionOpenSource/InfantryVisionFinal/main.cpp
        RM2018-DJTU-VisionOpenSource/InfantryVisionFinal/sudokuposcal.cpp
        RM2018-DJTU-VisionOpenSource/InfantryVisionFinal/sudokuposcal.h
        RM2018-DJTU-VisionOpenSource/Stereo_Calib/Header.h
        RM2018-DJTU-VisionOpenSource/Stereo_Calib/main.cpp
        RM2018-DJTU-VisionOpenSource/Stereo_Calib/RMVideoCapture.cpp
        RM2018-DJTU-VisionOpenSource/Stereo_Calib/RMVideoCapture.hpp
        RM2018-DJTU-VisionOpenSource/Stereo_Calib/StereoCalib.cpp
        RM2018-DJTU-VisionOpenSource/Stereo_Calib/StereoCalib.h
        RM2018-DJTU-VisionOpenSource/Vision_watchdog_proc/main.cpp
        "rubiks3-solve/Xcode/Rubiks Cube Solver/Combinatorics.cpp"
        "rubiks3-solve/Xcode/Rubiks Cube Solver/Combinatorics.hpp"
        "rubiks3-solve/Xcode/Rubiks Cube Solver/Cube.cpp"
        "rubiks3-solve/Xcode/Rubiks Cube Solver/Cube.hpp"
        "rubiks3-solve/Xcode/Rubiks Cube Solver/CubeDetector.cpp"
        "rubiks3-solve/Xcode/Rubiks Cube Solver/CubeDetector.hpp"
        "rubiks3-solve/Xcode/Rubiks Cube Solver/CubeParser.cpp"
        "rubiks3-solve/Xcode/Rubiks Cube Solver/CubeParser.hpp"
        "rubiks3-solve/Xcode/Rubiks Cube Solver/FaceletCube.cpp"
        "rubiks3-solve/Xcode/Rubiks Cube Solver/FaceletCube.hpp"
        "rubiks3-solve/Xcode/Rubiks Cube Solver/KociMoveTables.hpp"
        "rubiks3-solve/Xcode/Rubiks Cube Solver/main.cpp"
        "rubiks3-solve/Xcode/Rubiks Cube Solver/MoveTable.cpp"
        "rubiks3-solve/Xcode/Rubiks Cube Solver/MoveTable.hpp"
        "rubiks3-solve/Xcode/Rubiks Cube Solver/PruningTable.cpp"
        "rubiks3-solve/Xcode/Rubiks Cube Solver/PruningTable.hpp"
        "rubiks3-solve/Xcode/Rubiks Cube Solver/RubiksCube.cpp"
        "rubiks3-solve/Xcode/Rubiks Cube Solver/RubiksCube.hpp"
        "rubiks3-solve/Xcode/Rubiks Cube Solver/Solver.cpp"
        "rubiks3-solve/Xcode/Rubiks Cube Solver/Solver.hpp"
        "rubiks3-solve/Xcode/Rubiks Cube Solver/Vector.cpp"
        "rubiks3-solve/Xcode/Rubiks Cube Solver/Vector.hpp")
