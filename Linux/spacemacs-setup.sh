# ##########################
# spacemacs-setup.sh
# ##########################

#!/usr/bin/env bash

sudo apt update

# Start by installing emacs.
sudo apt install snapd
sudo snap install emacs --classic

# Get the Source Code Pro font.
cd ~/Downloads
wget https://github.com/adobe-fonts/source-code-pro/archive/2.030R-ro/1.050R-it.zip
if [ ! -d "~/.fonts" ] ; then
	mkdir ~/.fonts
fi
# Unzip and copy.
unzip 1.050R-it.zip
cp source-code-pro-*-it/OTF/*.otf ~/.fonts/
rm -rf source-code-pro*
rm 1.050R-it.zip
fc-cache -f -V

# Get the dotfiles repository for .spacemacs.
cd ~/repos
if [ ! -d "~/dotfiles" ] ; then
	git clone git@github.com:tonioteran/dotfiles.git
fi
cd dotfiles
git checkout toniodev
# Create the symbolic link.
ln -s ~/repos/dotfiles/emacs/.spacemacs ~/.spacemacs

# Install the spacemacs repository.
git clone https://github.com/syl20bnr/spacemacs ~/.emacs.d
