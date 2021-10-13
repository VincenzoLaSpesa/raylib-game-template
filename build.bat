pushd ..
set ABS_PATH=%CD%
popd

set TOOLCHAIN=D:\Codice\vcpkg\scripts\buildsystems\vcpkg.cmake
set TARGET="Visual Studio 16 2019"

mkdir build
cd build
cmake .. -G %TARGET% -A x64 -DCMAKE_BUILD_TYPE=RelWithDebInfo -DCMAKE_PREFIX_PATH=%ABS_PATH% -DCMAKE_TOOLCHAIN_FILE=%TOOLCHAIN%
cmake --build . --config RelWithDebInfo
