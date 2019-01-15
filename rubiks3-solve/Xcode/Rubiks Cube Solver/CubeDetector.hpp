//
// Created by top on 19-1-15.
//

#ifndef RUBIKS3_SOLVE_CUBEDETECTOR_HPP
#define RUBIKS3_SOLVE_CUBEDETECTOR_HPP

#include <iostream>
#include <opencv2/opencv.hpp>
#include <opencv2/imgproc.hpp>
#include <opencv2/highgui.hpp>
#include <opencv2/core.hpp>
#include <functional>

using namespace std;
using namespace cv;

class CubeDetector {
public:
    CubeDetector();
    ~CubeDetector();

    static bool comp(const Rect &a, const Rect &b) {
        if(fabs(a.y-b.y)>10){
            if(a.y > b.y) return false;
            else return true;
        }else{
            if(a.x > b.x) return false;
            else return true;
        }
    }

    vector<Rect> getROI(Mat &src);
    int Sum(Mat& src);
    string this_face_color(string fileName);

private:
    const int W_LowH = 10;
    const int W_HighH = 43;
    const int W_LowS = 0;
    const int W_HighS = 20;
    const int W_LowV = 230;
    const int W_HighV = 255;
//RED
    const int R_LowH = 0;
    const int R_HighH = 9;
    const int R_LowS = 128;
    const int R_HighS = 255;
    const int R_LowV = 128;
    const int R_HighV = 255;
//GREEN
    const int G_LowH = 46;
    const int G_HighH = 100;
    const int G_LowS = 128;
    const int G_HighS = 255;
    const int G_LowV = 128;
    const int G_HighV = 255;
//BLUE
    const int B_LowH = 101;
    const int B_HighH = 150;
    const int B_LowS = 128;
    const int B_HighS = 255;
    const int B_LowV = 128;
    const int B_HighV = 255;
//ORANGE
    const int O_LowH = 10;
    const int O_HighH = 15;
    const int O_LowS = 128;
    const int O_HighS = 255;
    const int O_LowV = 128;
    const int O_HighV = 255;
//YELLOW
    const int Y_LowH = 16;
    const int Y_HighH = 45;
    const int Y_LowS = 128;
    const int Y_HighS = 255;
    const int Y_LowV = 128;
    const int Y_HighV = 255;

    const string colorName[9] = {"W", "R", "G", "B", "O", "Y"};

};

#endif //RUBIKS3_SOLVE_CUBEDETECTOR_HPP
