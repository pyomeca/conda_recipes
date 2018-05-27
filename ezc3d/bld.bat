#!/bin/bash
mkdir build
cd build

cmake ../ -DCMAKE_INSTALL_PREFIX=$PREFIX -DBUILD_PYTHON=ON
cmake --build ./ --config Release|x64 --target install

