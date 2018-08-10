#!/bin/bash
mkdir build
cd build

cmake ../ \
      -DCMAKE_INSTALL_PREFIX=$PREFIX \
      -DBINDER_PYTHON3=ON \
      -DBINDER_MATLAB=ON \
      -DMatlab_biorbd_INSTALL_DIR=$PREFIX/MATLAB

make -j $CPU_COUNT
make install
