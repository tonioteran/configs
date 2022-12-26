# ######################
# 
# installWebDev.sh
#
# Contents:
# ######################

#!/usr/bin/env bash

# install dependencies
sudo apt-get install libssl1.0-dev

# install npm:
sudo apt update
sudo apt-get install nodejs-dev
sudo apt-get install npm

# install Vue
npm install vue
sudo npm install -g typescript
