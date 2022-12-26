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

# install inkscape with latex support
sudo apt-get install inkscape
sudo apt-get install python-gtk2 python-gtksourceview2
sudo apt-get install pdf2svg
sudo apt-get install libcanberra-gtk-module
cd ~/Downloads
wget https://github.com/textext/textext/releases/download/0.9.0/TexText-Linux-0.9.0.tar.gz
tar zxvf TexText-Linux-0.9.0.tar.gz
cd textext-0.9.0/
python setup.py
cd ~/Downloads
rm TexText-Linux-0.9.0.tar.gz
rm -rf textext-0.9.0

# get gnuplot iostream for plotting from c++
cd ~/repos
git clone https://github.com/dstahlke/gnuplot-iostream.git
cd gnuplot-iostream
make
cd ~/

