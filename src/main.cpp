#include <iostream>
#include "etoeNet.h"
#include "filesystem.h"
#include "opencv2/opencv.hpp"

int main(int argc, char** argv) {
    etoeNet etoe_net;
    std::string onnx_file_path = "/home/gibeom/onnx_practice/study2022/convert_to_onnx/model_NTH_Final.simplified.onnx";
    //TODO: load onnx file and init tensorrt
    etoe_net.loadOnnxFile(onnx_file_path);

    std::string video_path = "/home/gibeom/slam/dataset/oh3/oh3.mov";
    
    cv::VideoCapture cap(video_path);
    if(!cap.isOpened()){
        std::cerr << "file open error."<<std::endl;
        return 0;
    }
    double fps = cap.get(CV_CAP_PROP_FPS);
    double delay = 1000.0/fps;    

    cap.set(CV_CAP_PROP_POS_MSEC, (double)0.0 * 1000);

    cv::Mat img;

    while(true){
        cap >> img;
		if (img.empty())
		{
			printf("empty image");
			return 0;
		}

        etoe_net.runInference(img);
		cv::imshow("camera img", img);

		if (cv::waitKey(1000 / fps) == 27) {
			std::cout << "Stop Video" << std::endl;
			break;
        }
         
    }


}


