mkdir build
cd build

cmake ../^
    -G"Visual Studio 14 2015 Win64"^
    -DCMAKE_INSTALL_PREFIX="%PREFIX%"^
    -DBUILD_PYTHON=ON^
    -DBUILD_MATLAB=ON^
	-DBUILD_EXAMPLE=OFF^
    -DPython3_EXECUTABLE="%PREFIX%/python.exe"

cmake --build ./^
    --config Release^
    --target install
