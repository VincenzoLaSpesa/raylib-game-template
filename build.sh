#!/bin/sh

TOOLCHAIN=/media/osboxes/Data/vcpkg/scripts/buildsystems/vcpkg.cmake

mkdir build
cd build
conan install ..
cd ..
cmake -B ./build -S . -DCMAKE_TOOLCHAIN_FILE=$TOOLCHAIN
cmake --build ./build
