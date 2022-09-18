# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.15

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list


# Suppress display of executed commands.
$(VERBOSE).SILENT:


# A target that is always out of date.
cmake_force:

.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/local/bin/cmake

# The command to remove a file.
RM = /usr/local/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/gibeom/slam/CubemapSLAM_EndToEnd_ver3

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/gibeom/slam/CubemapSLAM_EndToEnd_ver3/build

# Include any dependencies generated for this target.
include CMakeFiles/cubemap_vadas.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/cubemap_vadas.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/cubemap_vadas.dir/flags.make

CMakeFiles/cubemap_vadas.dir/Examples/cubemap_vadas.cpp.o: CMakeFiles/cubemap_vadas.dir/flags.make
CMakeFiles/cubemap_vadas.dir/Examples/cubemap_vadas.cpp.o: ../Examples/cubemap_vadas.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/gibeom/slam/CubemapSLAM_EndToEnd_ver3/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/cubemap_vadas.dir/Examples/cubemap_vadas.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/cubemap_vadas.dir/Examples/cubemap_vadas.cpp.o -c /home/gibeom/slam/CubemapSLAM_EndToEnd_ver3/Examples/cubemap_vadas.cpp

CMakeFiles/cubemap_vadas.dir/Examples/cubemap_vadas.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/cubemap_vadas.dir/Examples/cubemap_vadas.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/gibeom/slam/CubemapSLAM_EndToEnd_ver3/Examples/cubemap_vadas.cpp > CMakeFiles/cubemap_vadas.dir/Examples/cubemap_vadas.cpp.i

CMakeFiles/cubemap_vadas.dir/Examples/cubemap_vadas.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/cubemap_vadas.dir/Examples/cubemap_vadas.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/gibeom/slam/CubemapSLAM_EndToEnd_ver3/Examples/cubemap_vadas.cpp -o CMakeFiles/cubemap_vadas.dir/Examples/cubemap_vadas.cpp.s

CMakeFiles/cubemap_vadas.dir/src/randInt8Calibrator.cpp.o: CMakeFiles/cubemap_vadas.dir/flags.make
CMakeFiles/cubemap_vadas.dir/src/randInt8Calibrator.cpp.o: ../src/randInt8Calibrator.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/gibeom/slam/CubemapSLAM_EndToEnd_ver3/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/cubemap_vadas.dir/src/randInt8Calibrator.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/cubemap_vadas.dir/src/randInt8Calibrator.cpp.o -c /home/gibeom/slam/CubemapSLAM_EndToEnd_ver3/src/randInt8Calibrator.cpp

CMakeFiles/cubemap_vadas.dir/src/randInt8Calibrator.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/cubemap_vadas.dir/src/randInt8Calibrator.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/gibeom/slam/CubemapSLAM_EndToEnd_ver3/src/randInt8Calibrator.cpp > CMakeFiles/cubemap_vadas.dir/src/randInt8Calibrator.cpp.i

CMakeFiles/cubemap_vadas.dir/src/randInt8Calibrator.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/cubemap_vadas.dir/src/randInt8Calibrator.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/gibeom/slam/CubemapSLAM_EndToEnd_ver3/src/randInt8Calibrator.cpp -o CMakeFiles/cubemap_vadas.dir/src/randInt8Calibrator.cpp.s

CMakeFiles/cubemap_vadas.dir/src/tensorNet.cpp.o: CMakeFiles/cubemap_vadas.dir/flags.make
CMakeFiles/cubemap_vadas.dir/src/tensorNet.cpp.o: ../src/tensorNet.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/gibeom/slam/CubemapSLAM_EndToEnd_ver3/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/cubemap_vadas.dir/src/tensorNet.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/cubemap_vadas.dir/src/tensorNet.cpp.o -c /home/gibeom/slam/CubemapSLAM_EndToEnd_ver3/src/tensorNet.cpp

CMakeFiles/cubemap_vadas.dir/src/tensorNet.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/cubemap_vadas.dir/src/tensorNet.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/gibeom/slam/CubemapSLAM_EndToEnd_ver3/src/tensorNet.cpp > CMakeFiles/cubemap_vadas.dir/src/tensorNet.cpp.i

CMakeFiles/cubemap_vadas.dir/src/tensorNet.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/cubemap_vadas.dir/src/tensorNet.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/gibeom/slam/CubemapSLAM_EndToEnd_ver3/src/tensorNet.cpp -o CMakeFiles/cubemap_vadas.dir/src/tensorNet.cpp.s

CMakeFiles/cubemap_vadas.dir/src/etoeNet.cpp.o: CMakeFiles/cubemap_vadas.dir/flags.make
CMakeFiles/cubemap_vadas.dir/src/etoeNet.cpp.o: ../src/etoeNet.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/gibeom/slam/CubemapSLAM_EndToEnd_ver3/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object CMakeFiles/cubemap_vadas.dir/src/etoeNet.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/cubemap_vadas.dir/src/etoeNet.cpp.o -c /home/gibeom/slam/CubemapSLAM_EndToEnd_ver3/src/etoeNet.cpp

CMakeFiles/cubemap_vadas.dir/src/etoeNet.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/cubemap_vadas.dir/src/etoeNet.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/gibeom/slam/CubemapSLAM_EndToEnd_ver3/src/etoeNet.cpp > CMakeFiles/cubemap_vadas.dir/src/etoeNet.cpp.i

CMakeFiles/cubemap_vadas.dir/src/etoeNet.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/cubemap_vadas.dir/src/etoeNet.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/gibeom/slam/CubemapSLAM_EndToEnd_ver3/src/etoeNet.cpp -o CMakeFiles/cubemap_vadas.dir/src/etoeNet.cpp.s

# Object files for target cubemap_vadas
cubemap_vadas_OBJECTS = \
"CMakeFiles/cubemap_vadas.dir/Examples/cubemap_vadas.cpp.o" \
"CMakeFiles/cubemap_vadas.dir/src/randInt8Calibrator.cpp.o" \
"CMakeFiles/cubemap_vadas.dir/src/tensorNet.cpp.o" \
"CMakeFiles/cubemap_vadas.dir/src/etoeNet.cpp.o"

# External object files for target cubemap_vadas
cubemap_vadas_EXTERNAL_OBJECTS =

../bin/cubemap_vadas: CMakeFiles/cubemap_vadas.dir/Examples/cubemap_vadas.cpp.o
../bin/cubemap_vadas: CMakeFiles/cubemap_vadas.dir/src/randInt8Calibrator.cpp.o
../bin/cubemap_vadas: CMakeFiles/cubemap_vadas.dir/src/tensorNet.cpp.o
../bin/cubemap_vadas: CMakeFiles/cubemap_vadas.dir/src/etoeNet.cpp.o
../bin/cubemap_vadas: CMakeFiles/cubemap_vadas.dir/build.make
../bin/cubemap_vadas: ../lib/libCubemapSLAM.so
../bin/cubemap_vadas: /usr/local/lib/libopencv_stitching.so.3.2.0
../bin/cubemap_vadas: /usr/local/lib/libopencv_superres.so.3.2.0
../bin/cubemap_vadas: /usr/local/lib/libopencv_videostab.so.3.2.0
../bin/cubemap_vadas: /usr/local/lib/libopencv_aruco.so.3.2.0
../bin/cubemap_vadas: /usr/local/lib/libopencv_bgsegm.so.3.2.0
../bin/cubemap_vadas: /usr/local/lib/libopencv_bioinspired.so.3.2.0
../bin/cubemap_vadas: /usr/local/lib/libopencv_ccalib.so.3.2.0
../bin/cubemap_vadas: /usr/local/lib/libopencv_cvv.so.3.2.0
../bin/cubemap_vadas: /usr/local/lib/libopencv_dpm.so.3.2.0
../bin/cubemap_vadas: /usr/local/lib/libopencv_freetype.so.3.2.0
../bin/cubemap_vadas: /usr/local/lib/libopencv_fuzzy.so.3.2.0
../bin/cubemap_vadas: /usr/local/lib/libopencv_line_descriptor.so.3.2.0
../bin/cubemap_vadas: /usr/local/lib/libopencv_optflow.so.3.2.0
../bin/cubemap_vadas: /usr/local/lib/libopencv_reg.so.3.2.0
../bin/cubemap_vadas: /usr/local/lib/libopencv_saliency.so.3.2.0
../bin/cubemap_vadas: /usr/local/lib/libopencv_stereo.so.3.2.0
../bin/cubemap_vadas: /usr/local/lib/libopencv_structured_light.so.3.2.0
../bin/cubemap_vadas: /usr/local/lib/libopencv_phase_unwrapping.so.3.2.0
../bin/cubemap_vadas: /usr/local/lib/libopencv_rgbd.so.3.2.0
../bin/cubemap_vadas: /usr/local/lib/libopencv_surface_matching.so.3.2.0
../bin/cubemap_vadas: /usr/local/lib/libopencv_tracking.so.3.2.0
../bin/cubemap_vadas: /usr/local/lib/libopencv_datasets.so.3.2.0
../bin/cubemap_vadas: /usr/local/lib/libopencv_dnn.so.3.2.0
../bin/cubemap_vadas: /usr/local/lib/libopencv_face.so.3.2.0
../bin/cubemap_vadas: /usr/local/lib/libopencv_plot.so.3.2.0
../bin/cubemap_vadas: /usr/local/lib/libopencv_text.so.3.2.0
../bin/cubemap_vadas: /usr/local/lib/libopencv_xfeatures2d.so.3.2.0
../bin/cubemap_vadas: /usr/local/lib/libopencv_shape.so.3.2.0
../bin/cubemap_vadas: /usr/local/lib/libopencv_video.so.3.2.0
../bin/cubemap_vadas: /usr/local/lib/libopencv_ximgproc.so.3.2.0
../bin/cubemap_vadas: /usr/local/lib/libopencv_calib3d.so.3.2.0
../bin/cubemap_vadas: /usr/local/lib/libopencv_features2d.so.3.2.0
../bin/cubemap_vadas: /usr/local/lib/libopencv_flann.so.3.2.0
../bin/cubemap_vadas: /usr/local/lib/libopencv_xobjdetect.so.3.2.0
../bin/cubemap_vadas: /usr/local/lib/libopencv_objdetect.so.3.2.0
../bin/cubemap_vadas: /usr/local/lib/libopencv_ml.so.3.2.0
../bin/cubemap_vadas: /usr/local/lib/libopencv_xphoto.so.3.2.0
../bin/cubemap_vadas: /usr/local/lib/libopencv_highgui.so.3.2.0
../bin/cubemap_vadas: /usr/local/lib/libopencv_photo.so.3.2.0
../bin/cubemap_vadas: /usr/local/lib/libopencv_videoio.so.3.2.0
../bin/cubemap_vadas: /usr/local/lib/libopencv_imgcodecs.so.3.2.0
../bin/cubemap_vadas: /usr/local/lib/libopencv_imgproc.so.3.2.0
../bin/cubemap_vadas: /usr/local/lib/libopencv_core.so.3.2.0
../bin/cubemap_vadas: /home/gibeom/Pangolin/build/src/libpangolin.so
../bin/cubemap_vadas: /usr/lib/x86_64-linux-gnu/libGL.so
../bin/cubemap_vadas: /usr/lib/x86_64-linux-gnu/libGLU.so
../bin/cubemap_vadas: /usr/lib/x86_64-linux-gnu/libGLEW.so
../bin/cubemap_vadas: /usr/lib/x86_64-linux-gnu/libSM.so
../bin/cubemap_vadas: /usr/lib/x86_64-linux-gnu/libICE.so
../bin/cubemap_vadas: /usr/lib/x86_64-linux-gnu/libX11.so
../bin/cubemap_vadas: /usr/lib/x86_64-linux-gnu/libXext.so
../bin/cubemap_vadas: /usr/lib/x86_64-linux-gnu/libpython3.8.so
../bin/cubemap_vadas: /usr/lib/x86_64-linux-gnu/libavcodec.so
../bin/cubemap_vadas: /usr/lib/x86_64-linux-gnu/libavformat.so
../bin/cubemap_vadas: /usr/lib/x86_64-linux-gnu/libavutil.so
../bin/cubemap_vadas: /usr/lib/x86_64-linux-gnu/libswscale.so
../bin/cubemap_vadas: /usr/lib/x86_64-linux-gnu/libpng.so
../bin/cubemap_vadas: /usr/lib/x86_64-linux-gnu/libz.so
../bin/cubemap_vadas: /usr/lib/x86_64-linux-gnu/libjpeg.so
../bin/cubemap_vadas: /usr/lib/x86_64-linux-gnu/libtiff.so
../bin/cubemap_vadas: ../ThirdParty/g2o/lib/libg2o.so
../bin/cubemap_vadas: ../ThirdParty/DBoW2/lib/libDBoW2.so
../bin/cubemap_vadas: /usr/local/lib/libboost_serialization.so.1.79.0
../bin/cubemap_vadas: ../lib/libjetson-utils.so
../bin/cubemap_vadas: /usr/local/cuda/lib64/libcudart_static.a
../bin/cubemap_vadas: /usr/lib/x86_64-linux-gnu/librt.so
../bin/cubemap_vadas: /usr/local/cuda/lib64/libnppicc.so
../bin/cubemap_vadas: CMakeFiles/cubemap_vadas.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/gibeom/slam/CubemapSLAM_EndToEnd_ver3/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Linking CXX executable ../bin/cubemap_vadas"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/cubemap_vadas.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/cubemap_vadas.dir/build: ../bin/cubemap_vadas

.PHONY : CMakeFiles/cubemap_vadas.dir/build

CMakeFiles/cubemap_vadas.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/cubemap_vadas.dir/cmake_clean.cmake
.PHONY : CMakeFiles/cubemap_vadas.dir/clean

CMakeFiles/cubemap_vadas.dir/depend:
	cd /home/gibeom/slam/CubemapSLAM_EndToEnd_ver3/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/gibeom/slam/CubemapSLAM_EndToEnd_ver3 /home/gibeom/slam/CubemapSLAM_EndToEnd_ver3 /home/gibeom/slam/CubemapSLAM_EndToEnd_ver3/build /home/gibeom/slam/CubemapSLAM_EndToEnd_ver3/build /home/gibeom/slam/CubemapSLAM_EndToEnd_ver3/build/CMakeFiles/cubemap_vadas.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/cubemap_vadas.dir/depend
