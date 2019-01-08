# Linux configurations

I've chopped up the distinct installation steps into small bites so that I can pick and choose which ones to run or not. The installation contents are described in the following sections.

## Scripts

- `installEssentials.sh`

-----

- `installUsefulNonessentials.sh`

This script will install nifty nonessential packages, such as:

  - Gnome Tweak Tool. Allows to more granularly configure the OS.

-----

- `masterInstall.sh`

Combines all of the previous scripts into a master installer.

## Manual installations

Scripts that are not included within the master installer are the following:

### Corsair Keyboard Software

Clones the Github repo, installs dependencies, and installs the driver for the Corsair keyboard. File: `installCorsair.sh`.

## Installation manuals (hehe)

### Inkscape

I like to have my inkscape equipped with LaTeX capabilities. Since I had a bit 
of trouble the first time I correctly installed it, I chose to document the way
in which I had success. Instructions are to be found at `./inkscape.md`.






