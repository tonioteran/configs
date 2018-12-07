# ##########################
# 
# installCorsair.sh
#
# clones the repo in ~/repos
# and install the software
# ##########################

#!/usr/bin/env bash

# requirements
sudo apt-get install libudev-dev qt5-default zlib1g-dev libappindicator-dev libpulse-dev libquazip5-dev

# clone the repo and install
cd ~/repos
git clone https://github.com/ckb-next/ckb-next.git
cd ckb-next

./quickinstall


