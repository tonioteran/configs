
# ##########################
# 
# installVTK.sh
#
# clones the repo in ~/repos
# and install the software
# ##########################

#!/usr/bin/env bash

# clone the repo and install
cd ~/repos
git clone git://vtk.org/VTK.git VTK
cd VTK
mkdir build
cd build
cmake ..
make -j2
sudo make install



