#!/bin/sh

TOOLCHAIN=/media/osboxes/Data/vcpkg/scripts/buildsystems/vcpkg.cmake

mkdir build
cd build
conan install ..
cd ..
cmake -B ./build -S .
cmake --build ./build
