# ######################
# 
# installLLVM.sh
#
# Contents:
# ######################

#!/usr/bin/env bash

# install LLVM first
cd ~/Downloads
wget http://releases.llvm.org/7.0.0/llvm-7.0.0.src.tar.xz
tar -xf llvm-7.0.0.src.tar.xz
cd llvm-7.0.0.src/
mkdir build
cd build
cmake ..
sudo make -j4
sudo make
sudo make install
sudo ldconfig

cd ~/Downloads
wget http://releases.llvm.org/7.0.0/cfe-7.0.0.src.tar.xz
tar -xf cfe-7.0.0.src.tar.xz
cd cfe-7.0.0.src
mkdir build
cd build
cmake ..
sudo make -j4
sudo make install
sudo ldconfig


