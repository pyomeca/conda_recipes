#!/bin/bash
mkdir build
cd build

cmake ../ \
    -DCMAKE_INSTALL_PREFIX=$PREFIX \
    -DBUILD_EXAMPLE=OFF \
    -DBINDER_MATLAB=OFF \
    -DMatlab_ezc3d_INSTALL_DIR=$PREFIX/MATLAB \
    -DBINDER_PYTHON3=ON

make -j $CPU_COUNT
make install
