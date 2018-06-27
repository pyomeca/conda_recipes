mkdir build
cd build

cmake ../^
    -G"Visual Studio 14 2015 Win64"^
    -DCMAKE_INSTALL_PREFIX="%PREFIX%"^
    -DBUILD_SHARED_LIBS=OFF^
    -DPYTHON3_WRAPPER=ON^
	-DMATLAB_WRAPPER=ON^
	-DMatlab_TOOLBOX_INSTALL_DIR="%PREFIX%/MATLAB"

cmake --build ./^
    --config Release^
    --target install
