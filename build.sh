#!/bin/sh

TOOLCHAIN=/home/vincenzo/Documents/vcpkg/scripts/buildsystems/vcpkg.cmake

mkdir build
cmake -B ./build -S . -DCMAKE_TOOLCHAIN_FILE=$TOOLCHAIN
cmake --build ./build