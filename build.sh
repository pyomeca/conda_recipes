#!/bin/bash
sudo apt install mercurial

conda create -n builder python
source activate builder
conda install conda-build
conda build purge
conda install anaconda-client

echo -e "\033[32mlogin into anaconda:\033[0m"
anaconda login

conda config --set anaconda_upload yes
echo -e "\033[32menvironment set\033[0m"

# build rbdl
cd rbdl
conda build .
echo -e "\033[32mrbdl uploaded\033[0m"

# build dlib
cd ../dlib
conda build . -c conda-forge
echo -e "\033[32mdlib uploaded\033[0m"

# build biorbd
cd ../biorbd
conda build . -c pyomeca
echo -e "\033[32mbiorbd uploaded\033[0m"

# build ezC3D
cd ../ezc3d
conda build .
echo -e "\033[32mezc3d uploaded\033[0m"

# remove environment
cd ..
source deactivate
conda env remove -n builder

echo -e "\033[32mYou can uninstall mercurial with sudo apt remove mercurial"
echo -e "\033[32menvironment cleaned. You are done!\033[0m"
