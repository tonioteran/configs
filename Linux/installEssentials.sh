# ######################
# 
# installEssentials.sh
#
# Contents:
# - Terminator
# ######################

#!/usr/bin/env bash

sudo apt-get update

# install C and C++ compilers
sudo apt-get install build-essential

# activity monitor
sudo apt-get install htop

# install curl
sudo apt-get install libcurl4-openssl-dev

# install CMake (version 3.13.1)
cd ~/Downloads
wget https://github.com/Kitware/CMake/releases/download/v3.13.1/cmake-3.13.1.tar.gz
tar zxvf cmake-3.13.1.tar.gz
cd cmake-3.13.1.tar.gz
./bootstrap && make -j4 && sudo make install
cd ~/Downloads
rm -rf cmake-3.13.1*




