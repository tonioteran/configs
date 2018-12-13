# ######################
# 
# installUsefulNonessentials.sh
#
# Contents:
# - Ubuntu Tweak Tool
# - Terminator
# - VLC
# ######################


#!/usr/bin/env bash

# - Ubuntu Tweak Tool ($ gnome-tweaks)
sudo add-apt-repository universe
sudo apt install gnome-tweak-tool

# install Terminator
sudo apt-get install terminator

# install VLC
sudo apt-get install vlc

# get Pangolin for OpenGL management:
cd ~/repos
git clone https://github.com/stevenlovegrove/Pangolin.git
cd Pangolin
# -- get dependencies
sudo apt-get install libglew-dev
sudo apt-get install ffmpeg libavcodec-dev libavutil-dev libavformat-dev libswscale-dev libavdevice-dev
sudo apt-get install libjpeg-dev libtiff5-dev libopenexr-dev
# -- build and install
mkdir build
cd build
cmake ..
cmake --build .
sudo make install
sudo ldconfig



