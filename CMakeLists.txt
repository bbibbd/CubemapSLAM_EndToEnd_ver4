cmake_minimum_required(VERSION 2.8)

project(CubemapSLAM)

LIST(APPEND CMAKE_MODULE_PATH ${PROJECT_SOURCE_DIR}/cmake_modules)

set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -std=c++11")
set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -Wall -O3 -march=native")

add_definitions(-DWITH_BOW2)

find_package(OpenCV REQUIRED)
if(OpenCV_FOUND)
    message(STATUS "OpenCV Found")
endif(OpenCV_FOUND)
find_package(Eigen3 REQUIRED)
find_package(Pangolin REQUIRED)
find_package(Boost REQUIRED serialization)
find_package(CUDA REQUIRED)
message("-- CUDA version: ${CUDA_VERSION}")


include_directories(
    ${PROJECT_SOURCE_DIR}
    ${PROJECT_SOURCE_DIR}/include
    ${PROJECT_SOURCE_DIR}/ThirdParty/DBoW2/
    ${PROJECT_SOURCE_DIR}/ThirdParty/g2o/
    ${Pangolin_INCLUDE_DIRS}
    ${EIGEN3_INCLUDE_DIR}
    ${OpenCV_INCLUDE_DIRS}
    ${Boost_INCLUDE_DIR}
)

set(PROJECT_OUTPUT_DIR  ${PROJECT_BINARY_DIR}/${CMAKE_SYSTEM_PROCESSOR})
set(PROJECT_INCLUDE_DIR ${PROJECT_OUTPUT_DIR}/include)

file(MAKE_DIRECTORY ${PROJECT_INCLUDE_DIR})
file(MAKE_DIRECTORY ${PROJECT_OUTPUT_DIR}/bin)

message("-- system arch:  ${CMAKE_SYSTEM_PROCESSOR}")
message("-- output path:  ${PROJECT_OUTPUT_DIR}")


set(CMAKE_ARCHIVE_OUTPUT_DIRECTORY ${PROJECT_OUTPUT_DIR}/lib)
set(CMAKE_LIBRARY_OUTPUT_DIRECTORY ${PROJECT_SOURCE_DIR}/lib)
set(CMAKE_RUNTIME_OUTPUT_DIRECTORY ${PROJECT_SOURCE_DIR}/bin)

include_directories(${PROJECT_INCLUDE_DIR}
${PROJECT_INCLUDE_DIR}/jetson-utils
${CUDA_INCLUDE_DIRS}
)

add_library(${PROJECT_NAME} SHARED
    src/CamModelGeneral.cpp
    src/Frame.cpp 
    src/System.cpp
    src/Tracking.cpp
    src/ORBExtractor.cpp
    src/Initializer.cpp
    src/ORBMatcher.cpp
    src/Map.cpp
    src/MapPoint.cpp
    src/KeyFrame.cpp
    src/LocalMapping.cpp
    src/Viewer.cpp
    src/MapDrawer.cpp
    src/FrameDrawer.cpp
    src/Optimizer.cpp
    src/g2o_cubemap_vertices_edges.cpp
    src/Converter.cpp
    src/KeyFrameDatabase.cpp
    src/LoopClosing.cpp
    src/Sim3Solver.cpp
    src/PnPsolver.cpp
    src/randInt8Calibrator.cpp
    src/tensorNet.cpp
    src/etoeNet.cpp
)

target_link_libraries(${PROJECT_NAME}
    ${OpenCV_LIBS} 
    ${EIGEN3_LIBS}
    ${Pangolin_LIBRARIES}
    ${PROJECT_SOURCE_DIR}/ThirdParty/g2o/lib/libg2o.so
    ${PROJECT_SOURCE_DIR}/ThirdParty/DBoW2/lib/libDBoW2.so
    ${Boost_LIBRARIES}
    jetson-utils
    nvinfer
    nvinfer_plugin
    nvcaffe_parser
    nvonnxparser
)

##for fangshan dataset
add_executable(cubemap_fangshan 
    Examples/cubemap_fangshan.cpp)
target_link_libraries(cubemap_fangshan ${PROJECT_NAME})

##for lafida dataset
add_executable(cubemap_lafida
    Examples/cubemap_lafida.cpp)
target_link_libraries(cubemap_lafida ${PROJECT_NAME})

##for vadas dataset

add_subdirectory(utils)

# set(DEPEND_LIBS
#     jetson-utils
#     nvinfer
#     nvinfer_plugin
#     nvcaffe_parser
#     nvonnxparser
#     ${OpenCV_LIBS}
# )
add_executable(cubemap_vadas
    Examples/cubemap_vadas.cpp
    src/randInt8Calibrator.cpp
    src/tensorNet.cpp
    src/etoeNet.cpp
)
target_link_libraries(cubemap_vadas ${PROJECT_NAME})

set(CMAKE_RUNTIME_OUTPUT_DIRECTORY ${PROJECT_SOURCE_DIR}/Vocabulary)
add_executable(bin_vocabulary Vocabulary/bin_vocabulary.cpp)
target_link_libraries(bin_vocabulary ${PROJECT_SOURCE_DIR}/ThirdParty/DBoW2/lib/libDBoW2.so ${OpenCV_LIBS})
