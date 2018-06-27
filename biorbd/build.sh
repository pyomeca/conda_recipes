#!/bin/bash
mkdir build
cd build

cmake ../ \
      -DCMAKE_INSTALL_PREFIX=$PREFIX \
      -DC_WRAPPER=ON \
      -DPYTHON3_WRAPPER=ON \
      -DMATLAB_WRAPPER=ON \
      -DMatlab_TOOLBOX_INSTALL_DIR=$PREFIX/MATLAB

make -j $CPU_COUNT
make install
