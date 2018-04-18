#!/bin/bash
mkdir build
cd build

cmake ../ \
      -DCMAKE_INSTALL_PREFIX=$PREFIX \
      -DC_WRAPPER=ON \
      -DPYTHON3_WRAPPER=ON

make -j $CPU_COUNT
make install
