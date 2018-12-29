#include <iostream>
#include <opencv2/core/utility.hpp>
#include <opencv2/tracking.hpp>
#include <opencv2/videoio.hpp>
#include <opencv2/highgui.hpp>
#include <cstring>

#include "CamshiftTracker/camshift/camShiftTracking.h"
#include "CamshiftTracker/camshift/getInitialRect.h"

using namespace std;
using namespace cv;

int OpencvTracker(char* argv[]);
int Camshift();

int main(int argc, char* argv[]) {
//    int rst_tracker = OpencvTracker(argv);
    int rst_Camshift = Camshift();
}

int OpencvTracker(char* argv[]){
    Rect2d roi;
    Mat frame;

    string trackerTypeList[5] = {"KCF", "MIL", "BOOSTING", "MEDIANFLOW", "TLD"};
    string trackerType = trackerTypeList[atoi(argv[1])];
    cout << "You chose " << trackerType << " algorithm" << endl;
    Ptr<Tracker> tracker = Tracker::create(trackerType);
    string video = "/home/top/project/object_detection/Blue_20000_ALL.avi";
    VideoCapture cap(video);

    if(!cap.isOpened()){
        cout << "Error opening video stream or file" << endl;
        return -1;
    }

//    while(1){
//        cap >> frame;
//        if(frame.empty()){
//            break;
//        }
//        imshow("Frame", frame);
//        char c = (char)waitKey(25);
//        if(c == 27) break;
//    }
//    cap.release();
//    destroyAllWindows();
//    return 0;
    cap >> frame;
    roi = selectROI("tracker", frame);

    if(roi.width == 0 || roi.height == 0)  return 0;
    tracker -> init(frame, roi);

    printf("Start the tracking process, press ESC to quit. \n");
    for(;;){
        cap >> frame;
        if(frame.rows == 0 || frame.cols == 0) break;
        tracker -> update(frame, roi);
        rectangle(frame, roi, Scalar(255, 0, 0), 2, 1);
        imshow("tracker", frame);
        if(waitKey(1) == 27) break;
    }
    cap.release();
    destroyAllWindows();
    return 0;
}

int Camshift(){
    string video = "/home/top/project/object_detection/Blue_20000_ALL.avi";

    VideoCapture cap(video);
    if(!cap.isOpened()){
        cout << "Error opening video stream or file" << endl;
        return -1;
    }
    Mat img;
    // select region to track by mouse click
    while(1)
    {
        cap>>img;
        imshow("GetInitialRect",img);
        char c= waitKey(1000);
        if(c=='i')
            break;
    }
    InitialRect intialRect=InitialRect();
    Rect toTrack= intialRect.getInitialRect(img);
    //initial the trackor
    CamShiftTracking trackor(img,0,255,50,255,toTrack);
    //track
    while(1)
    {
        cap >> img;
        Rect bb=trackor.track(img,toTrack);
        rectangle( img, bb, Scalar(0,0,255), 3, CV_AA );
        imshow("Img",img);
        char c= waitKey(10);
        if(c=='q')
            break;

    }
    return 0;
}