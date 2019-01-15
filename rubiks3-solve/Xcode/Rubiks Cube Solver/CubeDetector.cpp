//
// Created by top on 19-1-2.
//

#include "CubeDetector.hpp"

CubeDetector::CubeDetector() {}

CubeDetector::~CubeDetector() {}

vector<Rect> CubeDetector::getROI(Mat &src) {
    std::cout << "Hello, World!" << std::endl;
    Mat musk, gray, blurred, canny, dilated;
    src.copyTo(musk);
    cvtColor(src, gray, CV_RGB2GRAY);
    GaussianBlur(gray, blurred, Size(15,15), 0);
    Canny(blurred, canny, 20, 40);
    Mat element = getStructuringElement(MORPH_RECT, Size(5, 5));
    dilate(canny, dilated, element, Point(-1,-1), 2);
    vector<vector<Point>>contours;
    vector<Vec4i>hierarchy;
    findContours(dilated, contours, hierarchy, CV_RETR_TREE, CV_CHAIN_APPROX_SIMPLE);
    vector<Rect> rect;
    for(int i=0; i<contours.size(); i++){
        Rect rect_tmp = boundingRect(contours[i]);
        double s = rect_tmp.area();
        rectangle(musk, rect_tmp.tl(), rect_tmp.br(), Scalar(0, 255, 0));
//        imshow("musk", musk);
//        waitKey(0);
        if(s>3100 && s<3600){
            rect.push_back(rect_tmp);
        }
    }
    sort(rect.begin(), rect.end(), comp);
    //使用sort函数对容器rect进行排序，使得rect_tmp可以从左往右从上往下排序
    //定义一个结构体变量储存位置信息和序号信息和颜色信息
    //输出代表颜色的九个字符的字符串
//    imshow("image", musk);
//    waitKey(0);
    return rect;
}

int CubeDetector::Sum(Mat &src) {
    int counter = 0;
    //迭代器访问像素点
    Mat_<uchar>::iterator it = src.begin<uchar>();
    Mat_<uchar>::iterator itend = src.end<uchar>();
    for (; it != itend; ++it)
    {
        if ((*it)>0)
            counter += 1;
    }
    return counter;
}

string CubeDetector::this_face_color(string fileName) {
    char color_this_face[9];
    Mat src = imread(fileName);
    vector<Rect> ROI_rect = getROI(src);
    Mat imgHSV;
    vector<Mat> hsvSplit;
    cvtColor(src, imgHSV, COLOR_BGR2HSV);
    split(imgHSV, hsvSplit);
    equalizeHist(hsvSplit[2], hsvSplit[2]);
    merge(hsvSplit, imgHSV);
    Mat W_Thresholded;
    Mat R_Thresholded;
    Mat G_Thresholded;
    Mat B_Thresholded;
    Mat O_Thresholded;
    Mat Y_Thresholded;
    inRange(imgHSV, Scalar(W_LowH, W_LowS, W_LowV), Scalar(W_HighH, W_HighS, W_HighV), W_Thresholded);
    inRange(imgHSV, Scalar(R_LowH, R_LowS, R_LowV), Scalar(R_HighH, R_HighS, R_HighV), R_Thresholded);
    inRange(imgHSV, Scalar(G_LowH, G_LowS, G_LowV), Scalar(G_HighH, G_HighS, G_HighV), G_Thresholded);
    inRange(imgHSV, Scalar(B_LowH, B_LowS, B_LowV), Scalar(B_HighH, B_HighS, B_HighV), B_Thresholded);
    inRange(imgHSV, Scalar(O_LowH, O_LowS, O_LowV), Scalar(O_HighH, O_HighS, O_HighV), O_Thresholded);
    inRange(imgHSV, Scalar(Y_LowH, Y_LowS, Y_LowV), Scalar(Y_HighH, Y_HighS, Y_HighV), Y_Thresholded);
    vector<Mat> color_thre;
    color_thre.push_back(W_Thresholded); //白色对应于0
    color_thre.push_back(R_Thresholded); //红色对应于1
    color_thre.push_back(G_Thresholded); //绿色对应于2
    color_thre.push_back(B_Thresholded); //蓝色对应于3
    color_thre.push_back(O_Thresholded); //橙色对应于4
    color_thre.push_back(Y_Thresholded); //黄色对应于5
    const char colorName[6] = {'W', 'R', 'G', 'B', 'O', 'Y'};
//    namedWindow("[1]Cube", WINDOW_NORMAL);
//    imshow("[1]Cube", src);
//    namedWindow("[2]W_Thresholded", WINDOW_NORMAL);
//    imshow("[2]W_Thresholded", W_Thresholded);
//    namedWindow("[3]R_Thresholded", WINDOW_NORMAL);
//    imshow("[3]R_Thresholded", R_Thresholded);
//    namedWindow("[4]G_Thresholded", WINDOW_NORMAL);
//    imshow("[4]G_Thresholded", G_Thresholded);
//    namedWindow("[5]B_Thresholded", WINDOW_NORMAL);
//    imshow("[5]B_Thresholded", B_Thresholded);
//    namedWindow("[6]O_Thresholded", WINDOW_NORMAL);
//    imshow("[6]O_Thresholded", O_Thresholded);
//    namedWindow("[7]Y_Thresholded", WINDOW_NORMAL);
//    imshow("[7]Y_Thresholded", Y_Thresholded);
//    waitKey(0);
    for(int color = 0; color < 6; color++){
        for(int i = 0; i < 3; i++){
            for(int j = 0; j < 3; j++){
                Mat roi = color_thre[color](ROI_rect[3*i+j]);
                int isColor = Sum(roi);
                if (isColor > 200) {
                    rectangle(src, ROI_rect[3 * i + j], Scalar(0, 255, 0));
//                    putText(src, colorName[color], ROI_rect[3*i+j].tl(), FONT_HERSHEY_PLAIN, 1, Scalar(0,255,0), 1);
                    color_this_face[3 * i + j] = colorName[color];
                }
            }
        }
    }
    imshow("image", src);
    waitKey(0);
    string str = color_this_face;
    return str.substr(0,9);
}