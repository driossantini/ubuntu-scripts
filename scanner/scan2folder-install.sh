#!/bin/sh
# scan2folder tool

# install tools
sudo apt-get -y install ghostscript zenity

# main script
sudo wget --header='Accept-Encoding:none' -O /usr/local/bin/scan2folder https://raw.githubusercontent.com/NicolasBernaerts/ubuntu-scripts/master/scanner/scan2folder
sudo chmod +x /usr/local/bin/scan2folder

# configuration file
mkdir --parent $HOME/.config
wget --header='Accept-Encoding:none' -O $HOME/.config/scan2folder.conf https://raw.githubusercontent.com/NicolasBernaerts/ubuntu-scripts/master/scanner/scan2folder.conf

# desktop integration
sudo wget --header='Accept-Encoding:none' -O /usr/share/applications/scan2folder.desktop https://raw.githubusercontent.com/NicolasBernaerts/ubuntu-scripts/master/scanner/scan2folder.desktop
sudo chmod +x /usr/share/applications/scan2folder.desktop
