#!/bin/bash

#1) Install MRC:
sudo ./setup-scripts/install-mrc.sh  

#2) Create symbolic link: "$HOME"/bin -> SpArcFiRe/scripts
sudo ./setup-scripts/create-symbolic-link.sh

#3) update path variables:
./setup-scripts/update-path-variables.sh

#4) Create dir structure:
./setup-scripts/setup-dirs.sh

#5) Download sample fits:
./setup-scripts/download-sample-fits.sh
