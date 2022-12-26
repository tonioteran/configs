# ######################
# 
# installOpenCV.sh
#
# Contents:
# ######################

#!/usr/bin/env bash

# install image and video I/O libraries
sudo apt-get install libjpeg-dev libpng-dev libtiff-dev
sudo apt-get install libavcodec-dev libavformat-dev libswscale-dev libv4l-dev
sudo apt-get install libxvidcore-dev libx264-dev

# install gstreamer
sudo apt-get install libgstreamer1.0-0 gstreamer1.0-plugins-base gstreamer1.0-plugins-good gstreamer1.0-plugins-bad gstreamer1.0-plugins-ugly gstreamer1.0-libav gstreamer1.0-doc gstreamer1.0-tools gstreamer1.0-x gstreamer1.0-alsa gstreamer1.0-gl gstreamer1.0-gtk3 gstreamer1.0-qt5 gstreamer1.0-pulseaudio

# install GTK
sudo apt-get install libgtk-3-dev

# install math opt packages
sudo apt-get install libatlas-base-dev gfortran

# download OpenCV from github
cd /opt
sudo git clone --branch 4.0.0 https://github.com/opencv/opencv.git
sudo git clone --branch 4.0.0 https://github.com/opencv/opencv_contrib.git

# install
cd /opt/opencv
sudo mkdir build
cd /opt/opencv/build
sudo cmake -D CMAKE_BUILD_TYPE=RELEASE \
      	   -D OPENCV_ENABLE_NONFREE=ON \
	   -D WITH_OPENGL=ON \
	   -D WITH_EIGEN=ON \
	   -D WITH_VTK=ON  \
	   -D PYTHON3_EXECUTABLE=/usr/bin/python3 \
           -D OPENCV_EXTRA_MODULES_PATH=/opt/opencv_contrib/modules \
           -D BUILD_EXAMPLES=ON ..

# sudo cmake -D BUILD_TIFF=ON 
	   # -D WITH_CUDA=OFF 
	   # -D ENABLE_AVX=OFF 
	   # -D WITH_OPENGL=ON 
	   # -D WITH_OPENCL=OFF 
	   # -D WITH_IPP=OFF 
	   # -D WITH_TBB=ON 
	   # -D BUILD_TBB=ON 
	   # -D WITH_EIGEN=ON 
	   # -D WITH_V4L=OFF 
	   # -D WITH_VTK=ON 
	   # -D BUILD_TESTS=OFF 
	   # -D INSTALL_PYTHON_EXAMPLES=ON 
	   # -D PYTHON_EXECUTABLE=/usr/bin/python 
	   # -D BUILD_opencv_python3=ON 
	   # -D PYTHON3_EXECUTABLE=/usr/bin/python3 
	   # -D PYTHON3_INCLUDE_DIR=/usr/include/python3.5 
	   # -D PYTHON3_LIBRARY=/usr/lib/x86_64-linux-gnu/libpython3.5m.so 
	   # -D PYTHON3_NUMPY_INCLUDE_DIRS=/usr/lib/python3/dist-packages/numpy/core/include -D PYTHON3_PACKAGES_PATH=/usr/lib/python3/dist-packages 
	   # -D BUILD_EXAMPLES=ON 
	   # -D BUILD_PERF_TESTS=OFF 
	   # -D CMAKE_BUILD_TYPE=RELEASE 
	   # -D CMAKE_INSTALL_PREFIX=/usr/local 
	   # -D OPENCV_EXTRA_MODULES_PATH=/opt/opencv_contrib/modules /opt/opencv/

sudo make -j4
sudo make install
sudo ldconfig


