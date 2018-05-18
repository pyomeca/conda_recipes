#!/bin/bash
echo -e "\033[32mDid you check that the build number increased (to avoid blocking at the time of upload)?\033[0m"
select yn in "Yes" "No"; do
    case $yn in
        Yes ) echo -e "\033[32mGood!\033[0m"; break;;
        No ) echo -e "\033[32mDo it!\033[0m"; exit;;
    esac
done

sudo apt install mercurial

conda create -n builder python=3.6
source activate builder
conda install conda-build
conda build purge
conda install anaconda-client

echo -e "\033[32mlogin into anaconda:\033[0m"
anaconda login

conda config --set anaconda_upload yes
echo -e "\033[32menvironment set\033[0m"

# build rbdl
conda build rbdl
echo -e "\033[32mrbdl uploaded\033[0m"

# build dlib
conda build dlib -c conda-forge
echo -e "\033[32mdlib uploaded\033[0m"

# build biorbd
conda build biorbd -c mrtnz
echo -e "\033[32mbiorbd uploaded\033[0m"

# build ezC3D
conda build ezc3d
echo -e "\033[32mezc3d uploaded\033[0m"

# remove environment
source deactivate
conda env remove -n builder

echo -e "\033[32mYou can uninstall mercurial with sudo apt remove mercurial"
echo -e "\033[32menvironment cleaned. You are done!\033[0m"
