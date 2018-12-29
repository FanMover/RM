#include <iostream>
#include "opencv2/imgcodecs.hpp"
#include "opencv2/highgui.hpp"
#include "opencv2/imgproc.hpp"

using namespace cv;
using namespace std;

Mat src, src_gray;
int thresh = 200;
int max_thresh = 255;

const char* source_window = "Source image";
const char* corners_window = "Corners detected";

void HoughTransform(int argc, char** argv);
void Harris_demo(int, void*);

int main(int , char** argv) {
    HoughTransform(0,0);
//    src = imread( "/home/top/Desktop/2.jpg", IMREAD_COLOR );
//    cvtColor( src, src_gray, COLOR_BGR2GRAY );
//    namedWindow( source_window, WINDOW_AUTOSIZE );
//    createTrackbar( "Threshold: ", source_window, &thresh, max_thresh, Harris_demo );
//    imshow( source_window, src );
//    Harris_demo( 0, 0 );
//    waitKey(0);
//    return(0);

}

void HoughTransform(int argc, char** argv){
    Mat dst, cdst, cdstP;


    const char* default_file = "/home/top/Desktop/2.jpg";
    const char* filename = argc >= 2 ? argv[1] :default_file;

    Mat src = imread(default_file, IMREAD_GRAYSCALE);

    imshow("source", src);

    if(src.empty()){
        printf("Error opening image\n");
        printf("program Arguments: [image_name -- default %s] \n", default_file);
    }

    Canny(src, dst, 50, 200, 3);

    cvtColor(dst, cdst, COLOR_GRAY2BGR);

    vector<Vec2f> lines;
    HoughLines(dst, lines, 1, CV_PI/180, 150, 0, 0);
    cout << lines.size() << endl;

    Point2f point[2][lines.size()];
    Point2f point_cross[lines.size()*lines.size()];
    int count = 0;
    for(size_t i = 0;i < lines.size(); i++){
        float rho = lines[i][0], theta = lines[i][1];
        Point pt1, pt2;
        double a = cos(theta), b = sin(theta);
        double x0 = a*rho, y0 = b*rho;
        pt1.x = cvRound(x0 + 1000*(-b));
        pt1.y = cvRound(y0 + 1000*(a));
        pt2.x = cvRound(x0 - 1000*(-b));
        pt2.y = cvRound(y0 - 1000*(a));
        line( cdst, pt1, pt2, Scalar(0,0,255), 3, LINE_AA);
        cout << pt1 << "<->" << pt2 << endl;
        point[0][i] = pt1, point[1][i] = pt2;
    }
    for(int i=0; i<6; i++){
        for(int j=6; j>=i; j--){
            double k1 = double (point[1][i].y - point[0][i].y)/(point[1][i].x - point[0][i].x);
            double k2 = double (point[1][j].y - point[0][j].y)/(point[1][j].x - point[0][j].x);
            double b1 = double (point[1][i].y - k1*point[1][i].x);
            double b2 = double (point[1][j].y - k2*point[1][j].x);
            point_cross[count].x = (b2-b1)/(k1-k2);
            point_cross[count].y = k1*point_cross[count].x+b1;
            circle(cdst, point_cross[count], 5, Scalar(0,255,0) );
            count++;
        }
    }
    imshow("source", src);
    imshow("Detected Lines in red - Standard Hough Line Transform", cdst);

    waitKey(0);
}

void Harris_demo(int, void*){
    Mat dst, dst_norm, dst_norm_scaled;
    dst = Mat::zeros( src.size(), CV_32FC1 );
    int blockSize = 2;
    int apertureSize = 3;
    double k = 0.04;
    cornerHarris( src_gray, dst, blockSize, apertureSize, k, BORDER_DEFAULT );
    normalize( dst, dst_norm, 0, 255, NORM_MINMAX, CV_32FC1, Mat() );
    convertScaleAbs( dst_norm, dst_norm_scaled );
    for( int j = 0; j < dst_norm.rows ; j++ )
    { for( int i = 0; i < dst_norm.cols; i++ )
        {
            if( (int) dst_norm.at<float>(j,i) > thresh )
            {
                circle( dst_norm_scaled, Point( i, j ), 5,  Scalar(0,0,255), 10, 8, 0 );
            }
        }
    }
    namedWindow( corners_window, WINDOW_AUTOSIZE );

    imshow( corners_window, dst_norm_scaled );
}