#!/bin/bash
mkdir build
cd build

cmake ../^
    -G"Visual Studio 14 2015 Win64"^
    -DCMAKE_INSTALL_PREFIX=$PREFIX^
    -DBUILD_PYTHON=ON
cmake --build ./ --config Release --target install

