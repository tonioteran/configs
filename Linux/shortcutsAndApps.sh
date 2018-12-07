# ######################
# 
# shortcutsAndApps.sh
#
# Contents:
# ######################

#!/usr/bin/env bash

# set aliases in bashrc
echo "" >> ~/.bashrc
echo "# Setting up aliases from shortcutAndApps.sh" >> ~/.bashrc
echo "alias blender='/opt/blender/blender'" >> ~/.bashrc
echo "alias repos='cd ~/repos'" >> ~/.bashrc
echo "alias gitstatus='~/repos/configs/Linux/gitstatus.sh'" >> ~/.bashrc
echo "" >> ~/.bashrc


# install readme viewer, from:
# https://tosbourn.com/view-markdown-files-terminal/
sudo apt-get install pandoc
sudo apt-get install lynx
echo "" >> ~/.bashrc
echo "# script for reading markdown files" >> ~/.bashrc
echo "rmd () {" >> ~/.bashrc
echo "  pandoc \$1 | lynx -stdin" >> ~/.bashrc
echo "}" >> ~/.bashrc
echo "" >> ~/.bashrc






