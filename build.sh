#!/bin/bash

# build rbdl
conda build rbdl
anaconda upload ~/miniconda3/conda-bld/linux-64/rbdl*

# build dlib
conda build dlib -c conda-forge
anaconda upload ~/miniconda3/conda-bld/linux-64/dlib*

# build biorbd
conda build biorbd -c mrtnz
anaconda upload ~/miniconda3/conda-bld/linux-64/biorbd*
