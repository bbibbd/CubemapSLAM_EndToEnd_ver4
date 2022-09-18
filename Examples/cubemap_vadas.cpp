/**
* This file is part of CubemapSLAM.
*
* Copyright (C) 2017-2019 Yahui Wang <nkwangyh at mail dot nankai dot edu dot cn> (Nankai University)
* For more information see <https://github.com/nkwangyh/CubemapSLAM>
*
* CubemapSLAM is free software: you can redistribute it and/or modify
* it under the terms of the GNU General Public License as published by
* the Free Software Foundation, either version 3 of the License, or
* (at your option) any later version.
*
* CubemapSLAM is distributed in the hope that it will be useful,
* but WITHOUT ANY WARRANTY; without even the implied warranty of
* MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
* GNU General Public License for more details.
*
* You should have received a copy of the GNU General Public License
* along with CubemapSLAM. If not, see <http://www.gnu.org/licenses/>.
*/

/*
* CubemapSLAM is based on ORB-SLAM2 and Multicol-SLAM which were also released under GPLv3
* For more information see <https://github.com/raulmur/ORB_SLAM2>
* Raúl Mur-Artal <raulmur at unizar dot es> (University of Zaragoza)
* and <https://github.com/urbste/MultiCol-SLAM>
* Steffen Urban <urbste at googlemail.com>
*/
#define WEBCAM

#include <iostream>
#include <fstream>
#include <vector>
#include <string>
#include <cassert>

#include <unistd.h>
#include <sys/types.h>

#include <opencv2/opencv.hpp>
#include <opencv2/core/mat.hpp>

#include "System.h"
#include "CamModelGeneral.h"
#include "Frame.h"
#include "ORBExtractor.h"

#include "etoeNet.h"
#include "filesystem.h"

using namespace std;
using namespace cv;

unsigned int frame_counter;
int idx = 0;

int main(int argc, char **argv)
{

#ifdef VIDEO
    if(argc != 6)
    {
        cerr << endl << "Usage: ./cubemap_vadas PATH_TO_DATA START_POINT(second) [0|1](LOAD_MAP) PATH_TO_ONNX PATO_TO_FRAMES" << endl;
        return 1;
    }

#else if WEBCAM

    if(argc != 4)
    {
        cerr << endl << "Usage: ./cubemap_vadas [0|1](load map) PATH_TO_ONNX PATO_TO_FRAMES" << endl;
        return 1;
    }
#endif

    //Load ONNX file and initialize it
    etoeNet etoe_net;


#ifdef VIDEO
    string onnx_file_path = string(argv[4]);
    string output_frame_path = string(argv[5]);
#else if WEBCAM
    string onnx_file_path = string(argv[2]);
    string output_frame_path = string(argv[3]) + "/frame";
#endif


    
    //TODO: load onnx file and init tensorrt
    etoe_net.loadOnnxFile(onnx_file_path);
    
    //Set project path and data path.
    string projectPath = "/home/gibeom/slam/CubemapSLAM_EndToEnd_ver3";

#ifdef VIDEO
    string dataPath = string(argv[1]);
    VideoCapture cap(dataPath);

#else if WEBCAM
    VideoCapture cap(0);
#endif

    if(!cap.isOpened()){
        cerr << "file open error."<<endl;
        return 1;
    }

	cap.set(CV_CAP_PROP_FRAME_WIDTH, 1920);
	cap.set(CV_CAP_PROP_FRAME_HEIGHT, 1080);


    double fps = cap.get(CV_CAP_PROP_FPS);
    double delay = 1000.0/fps;

#ifdef VIDEO
    int start = atoi(argv[2]);
    cap.set(CV_CAP_PROP_POS_MSEC, (double)start * 1000);
#endif

    // Read vocabulary file and parameter file.
    std::string vocabularyFilePath(projectPath + "/Vocabulary/ORBvoc.bin");
    std::string settingFilePath(projectPath + "/Config/vadas_cam_params.yaml");
    //std::string settingFilePath(projectPath + "/Config/nth3.yaml");

#ifdef VIDEO
    System cubemapSLAM(vocabularyFilePath, settingFilePath, true, (bool)atoi(argv[3]));
    cubemapSLAM.SetViewerFrameCnt(cap.get(CAP_PROP_FRAME_COUNT));
    cubemapSLAM.SetViewerCurFramePos(0);

#else if WEBCAM
    System cubemapSLAM(vocabularyFilePath, settingFilePath, true, (bool)atoi(argv[1]));
#endif

    int offset = 0;
    int width = CamModelGeneral::GetCamera()->GetCubeFaceWidth(), height = CamModelGeneral::GetCamera()->GetCubeFaceHeight();
    Mat cubemapImg(height * 3, width * 3, CV_8U, Scalar::all(0));
    Mat cubemapImg_front = cubemapImg.rowRange(height, 2 * height).colRange(width, 2 * width);
    Mat cubemapImg_left = cubemapImg.rowRange(height, 2 * height).colRange(0+offset, width+offset);
    Mat cubemapImg_right = cubemapImg.rowRange(height, 2 * height).colRange(2 * width-offset, 3 * width-offset);
    Mat cubemapImg_upper = cubemapImg.rowRange(0+offset, height+offset).colRange(width, 2 * width);
    Mat cubemapImg_lower = cubemapImg.rowRange(2 * height-offset, 3 * height-offset).colRange(width, 2 * width);

    //when image mask is not needed, a grayscale image with all pixel as 255 will be created
    Mat cubemapMask = imread(projectPath + "/Masks/vadas_gray_cubemap_front_mask_650.png", IMREAD_GRAYSCALE);
    // Mat cubemapMask(height * 3, width * 3, CV_8U, 255);
    
    Mat fisheyeImg;

    // One loop in every nStep frames.
    int nStep = 2;

    cubemapSLAM.OpenSerialPort();

    float currentAngle = 0.0;
    int diffAngle = 0;
    float actualAngle = 0.0;   

    char go[1]= {'w'};
    char left[1] = {'a'};
    char right[1] = {'d'};
    char trash[1] = {'b'};
    char stop[1] = {'s'};
    char clear[1] = {0x0D};

    write(cubemapSLAM.fd, go, 1);

    // char clear[1];
    // clear[0] = 0x0D;
    // write(cubemapSLAM.fd, clear, 1);
    // write(cubemapSLAM.fd, go, 1);

    // clear[0] = 0x0D;
    // write(cubemapSLAM.fd, clear, 1);

    usleep(50000);
    while(true){

#ifdef VIDEO
        cubemapSLAM.SetViewerCurFramePos(cap.get(CAP_PROP_POS_FRAMES));
#endif
        cap>>fisheyeImg;        

        std::string finename = output_frame_path + std::to_string(idx) + ".jpg";
        cv::imwrite(finename,fisheyeImg );
        idx ++;

        for(int i=0; i<nStep-1; i++){
             cap.grab();
        }

        if(!fisheyeImg.data)
        {
            break;
        }

        etoe_net.runInference(fisheyeImg);

        //send driving command to board
        //----------------------------------------------------------------        
        actualAngle = etoe_net.getActualAngle_ver2();
        diffAngle = (int)((currentAngle - actualAngle)/5);

        std::cout << "current_angle: " << currentAngle << " actual_angle: " << actualAngle << " diff_angle: " << diffAngle << std::endl;        
        currentAngle = actualAngle;

        if(diffAngle == 0){
            std::cout << "do not write any data" << std::endl;
	    
        }
        else if(diffAngle < 0){
            for(int i=0; i< -diffAngle; i++){
                std::cout << "write: d (" << i+1 << ")" << std::endl;
                write(cubemapSLAM.fd, right, 1);
        //        write(cubemapSLAM.fd, clear, 1);
            }
        }else{
            for(int i=0; i< diffAngle; i++){
                std::cout << "write: a (" << i+1 << ")" << std::endl;
                write(cubemapSLAM.fd, left, 1);
        //        write(cubemapSLAM.fd, clear, 1);
            }
        }
        //------------------------------------------------------------

        cvtColor(fisheyeImg, fisheyeImg, CV_BGR2GRAY);

        // Mapping fisheye to cubemap.
        cubemapSLAM.CvtFisheyeToCubeMap_reverseQuery_withInterpolation(cubemapImg, fisheyeImg, INTER_LINEAR);
        
        // Track cubemap.
        cubemapSLAM.TrackCubemap(cubemapImg, cubemapMask, delay);
        char key = cubemapSLAM.GetKeyboardInput();
        if(key == 27){
            write(cubemapSLAM.fd, stop, 1);
            break;
        }
        else if(key=='s'){
            cubemapSLAM.SaveMap(cubemapSLAM.mapfile);
        }
    }
    // Stop all threads
    cubemapSLAM.Shutdown();

    std::string trajSavingPath = "KeyFrameTrajectory.txt";
    cubemapSLAM.SaveKeyFrameTrajectoryTUM(trajSavingPath);
}