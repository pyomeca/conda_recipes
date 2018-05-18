#!/bin/bash
mkdir build
cd build

cmake ../ \
      -DCMAKE_INSTALL_PREFIX=$PREFIX \
      -DBUILD_PYTHON=ON

make -j $CPU_COUNT
make install
