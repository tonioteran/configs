# ######################
# 
# installEssentials.sh
#
# Contents:
# ######################

#!/usr/bin/env bash

sudo apt-get update

# install C and C++ compilers
sudo apt-get install build-essential

# enable compatibility with other filesystem types
sudo apt-get install exfat-fuse exfat-utils

# activity monitor
sudo apt-get install htop

# install curl and ruby
sudo apt-get install libcurl4-openssl-dev
sudo apt-get install ruby rubygems vim-nox

# install dev tools
sudo apt-get install unzip pkg-config

# install CMake (version 3.13.1)
echo "Installing CMake from source (3.13.1) ..."
cd ~/Downloads
wget https://github.com/Kitware/CMake/releases/download/v3.13.1/cmake-3.13.1.tar.gz
tar zxvf cmake-3.13.1.tar.gz
cd cmake-3.13.1
./bootstrap --system-curl && make -j4 && sudo make install
cd ~/Downloads
rm -rf cmake-3.13.1*

# install pythons
echo "Installing python 2 and 3..."
sudo apt-get install python3.7-dev
sudo apt-get install python2.7-dev
sudo apt install python3-widgetsnbextension
sudo apt install python3-testresources
# install pip
cd ~/Downloads
wget https://bootstrap.pypa.io/get-pip.py
sudo python3 get-pip.py
rm get-pip.py
sudo pip install numpy

# install Boost library
echo "Installing Boost library from source (1.68.0) ..."
cd ~/Downloads
wget https://dl.bintray.com/boostorg/release/1.68.0/source/boost_1_68_0.tar.gz
tar zxvf boost_1_68_0.tar.gz
cd boost_1_68_0
sudo ./bootstrap.sh
sudo ./b2 install
cd ~/Downloads
sudo rm -rf boost_1_68*

# install OpenGL
echo "Installing OpenGL libraries"
sudo apt-get install libgl1-mesa-dev
sudo apt-get install libglew-dev libsdl2-dev libsdl2-image-dev libglm-dev libfreetype6-dev
sudo apt install mesa-utils
sudo apt-get install freeglut3 freeglut3-dev

# install Eigen
cd /usr/local/include
sudo wget http://bitbucket.org/eigen/eigen/get/3.3.5.tar.gz
sudo tar zxvf 3.3.5.tar.gz
cd eigen-eigen-b3f3d4950030/
sudo mkdir build
cd build
sudo cmake ..
sudo make install
cd /usr/local/include
sudo rm 3.3.5.tar.gz
sudo rm -rf eigen-eigen-b3f3d4950030/



