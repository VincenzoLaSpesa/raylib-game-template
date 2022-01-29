pushd ..
set ABS_PATH=%CD%
popd

set TOOLCHAIN=D:\Codice\vcpkg\scripts\buildsystems\vcpkg.cmake
set TARGET1="Visual Studio 16 2019"
set TARGET2="Visual Studio 15 2017"
set TARGET3="Visual Studio 9 2008"
set CONAN_REVISIONS_ENABLED=1

mkdir build_2017
cd build_2017
conan install .. -pr=../conan_profiles/vs2017_x64.profile --build=missing
cd ..
cmake -S . -B .\build_2017\ -G %TARGET2% -A x64 -DCMAKE_BUILD_TYPE=RelWithDebInfo -DCONAN_TOOLCHAIN_FOLDER:STRING=build_2017
rem -DCMAKE_TOOLCHAIN_FILE=%TOOLCHAIN% -DCMAKE_PREFIX_PATH=%ABS_PATH%
cmake --build .\build_2017 --config RelWithDebInfo

mkdir build_2008
cd build_2008
conan install .. -pr=../conan_profiles/vs2008_x86.profile --build=missing
cd ..
cmake -S . -B .\build_2008\ -G %TARGET3% -A Win32 -DCMAKE_BUILD_TYPE=RelWithDebInfo -DCONAN_TOOLCHAIN_FOLDER:STRING=build_2008 
rem -DCMAKE_TOOLCHAIN_FILE=%TOOLCHAIN% -DCMAKE_PREFIX_PATH=%ABS_PATH%
cmake --build .\build_2008 --config RelWithDebInfo