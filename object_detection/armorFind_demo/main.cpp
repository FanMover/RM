#include <iostream>
#include "Header.h"
#include "armorfind.h"

using namespace cv;
using namespace std;

Mat contourThreadkernel = getStructuringElement(MORPH_ELLIPSE,Size(9,9));
vector<vector<Point> > contours;

void ContourThread(int mode,Mat input,Mat &binary,int thres,vector<vector<Point> > &contours){
    Mat thres_whole;//,inputafter;
    vector<Mat> splited;
    //input.convertTo(inputafter,input.type(),1.5,-200);
    split(input,splited);
//    imshow("splited[0]", splited[0]);
//    imshow("splited[1]", splited[1]);
//    imshow("splited[2]", splited[2]);
    cvtColor(input,thres_whole,CV_BGR2GRAY);

    threshold(thres_whole,thres_whole,100,255,THRESH_BINARY);
    if(mode == 0){
        subtract(splited[2],splited[0],binary);
        threshold(binary,binary,thres,255,THRESH_BINARY);// red
    }else{
        subtract(splited[0],splited[2],binary);
//        imshow("binary", binary);
        threshold(binary,binary,thres,255,THRESH_BINARY);// blue
//        imshow("binary_thresh", binary);
    }
    dilate(binary,binary,contourThreadkernel);
//    imshow("dilated", binary);
    binary = binary & thres_whole;
//    imshow("&&", binary);
    findContours(binary,contours,CV_RETR_TREE,CV_CHAIN_APPROX_SIMPLE);
    cvtColor(binary, binary, CV_GRAY2BGR);
//    drawContours(binary, contours, -1, (0, 0, 255), 2);
//    imshow("final", binary);
    waitKey(0);
}

int main() {
    std::cout << "Hello, World!" << std::endl;
//    Mat image = imread("/home/top/Desktop/5.jpg");
    VideoCapture cap("/home/top/Desktop/armorVideo.mp4");
    while(cap.isOpened()){
        Mat frame;
        cap>>frame;
        if(frame.empty()) {cout<<"frame is empty"<<endl; break;}
        Mat image_binary;
        ContourThread(1, frame, ref(image_binary), 128, ref(contours));
        ContourThread(0, frame, ref(image_binary), 128, ref(contours));
        Mat output;
        vector<Point> result;
        ArmorFind Finder;
        Finder.process(contours, ref(frame), ref(output), ref(result), 1);
        imshow("Frame", output);
        cout<<"result:"<<result<<endl;
        char c=(char)waitKey(25);
        if(c==27)
            break;
    }
    cap.release();
    destroyAllWindows();
}