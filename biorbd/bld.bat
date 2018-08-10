mkdir build
cd build

cmake ../^
    -G"Visual Studio 14 2015 Win64"^
    -DCMAKE_INSTALL_PREFIX="%PREFIX%"^
    -DBUILD_SHARED_LIBS=OFF^
    -DBINDER_PYTHON3=ON^
    -DPython3_EXECUTABLE="%PREFIX%/python.exe"^
	-DBINDER_MATLAB=ON^
	-DMatlab_biorbd_INSTALL_DIR="%PREFIX%/MATLAB"

cmake --build ./^
    --config Release^
    --target install
