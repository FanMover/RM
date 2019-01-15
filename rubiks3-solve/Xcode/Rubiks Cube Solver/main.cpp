#include <iostream>

#include "CubeDetector.hpp"
#include "CubeParser.hpp"
#include "FaceletCube.hpp"
#include "RubiksCube.hpp"
#include "Solver.hpp"

using namespace std;
using namespace cv;

int main(int argc, char *argv[]) {
    unsigned int status;

//    string faceletStrings[6] = {
//            "U:WBGYGRRWB", "D:OOWRBBGYY", "F:WBRORWBGG", "B:WRBROBGGR", "L:OOBOYWYWY", "R:YGRGWYOYO"
//    };
    string faceletStrings[6];
    CubeDetector cubeDetector;
    string fileName = "/home/top/Desktop/6.jpg";
    string str = cubeDetector.this_face_color(fileName);
    cout<<str<<endl;


//    Parse the input and initialize FaceletCube
//    FaceletCube faceletCube;
//    CubeParser cubeParser;
//    if((status = cubeParser.parseFacelets(faceletStrings, faceletCube)) != CubeParser::VALID) {
//        cout << cubeParser.ErrorText(status) << endl;
//        return 1;
//    }
//
//    // Validate the FaceletCube
//    RubiksCube cube;
//    if((status = faceletCube.Validate(cube)) != FaceletCube::VALID) {
//        cout << faceletCube.ErrorText(status) << endl;
//        return 1;
//    }
//
//    // Cube is in a valid configuration at this point
//
//    // Initialize tables and solve
//    Solver solver;
//    solver.InitializeTables();
//    solver.Solve(cube);
    
    return 0;
}	
