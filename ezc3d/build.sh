#!/bin/bash
mkdir build
cd build

cmake ../ \
      -DCMAKE_INSTALL_PREFIX=$PREFIX \
	  -DBUILD_EXAMPLE=OFF \
      -DBUILD_PYTHON=ON \
	  -DBUILD_MATLAB=ON \
	  -DMatlab_ezc3d_INSTALL_DIR=$PREFIX/MATLAB

make -j $CPU_COUNT
make install
