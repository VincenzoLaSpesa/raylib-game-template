-----------------------------------

_DISCLAIMER:_

Welcome to **raylib game template**!

This template provides a base structure to start developing a small raylib game in plain C. The repo is also pre-configured with a default `LICENSE` (zlib/libpng) and a `README.md` (this one) to be properly filled by users. Feel free to change the LICENSE as required.

All the sections defined by `$(Data to Fill)` are expected to be edited and filled properly. It's recommended to delete this disclaimer message after editing this `README.md` file.

This template has been created to be used with raylib (www.raylib.com) and it's licensed under an unmodified zlib/libpng license.

_Copyright (c) 2014-2021 Ramon Santamaria ([@raysan5](https://twitter.com/raysan5))_

-----------------------------------

## Building on windows

### Setup your building environment

You will need:

-   Visual Studio, even the Community version (previously known as Express)
    -   Download it from here https://visualstudio.microsoft.com/it/vs/express/

- Cmake, a build automation tool
    -  Download it from here https://cmake.org/ or
    -  Install it with chocolatey (https://chocolatey.org/install) or
    -  let visual studio install it ( and let me know if it works...)

- Vcpkg, C/C++ dependency system
  - Install it from here and follow the instruction in the readme https://github.com/microsoft/vcpkg 

### Get Raylib and run the template

Install Raylib with vcpkg:

    .\vcpkg.exe install raylib:x64-windows

Clone this repository somewhere, open the `build.bat` and set the toolchain with the one inside your vcpkg folder

    set TOOLCHAIN=somewhere_in_your_computer\vcpkg\scripts\buildsystems\vcpkg.cmake

Also set the target to your installed version of visual studio ( or whatever target you want). Some targets are:

    Visual Studio 16 2019
    Visual Studio 15 2017
    Visual Studio 14 2015
    Visual Studio 12 2013

Run `build.bat` and you are ready to go, a Visual Studio solution should be ready in the build folder inside the repository.

Add your files inside the src folder and edit the `./src/CMakeLists.txt` accordingly.

## Building on Linux

### Setup your building environment

#### Get the compiling tools
- On Debian and debian-like 
    
        sudo apt-get update
        sudo apt-get install build-essential tar curl zip unzip libasound2-dev mesa-common-dev libx11-dev libxrandr-dev libxi-dev xorg-dev libgl1-mesa-dev libglu1-mesa-dev

- On CentOs 

        sudo yum install centos-release-scl devtoolset-7
        scl enable devtoolset-7 bash

and some version of libasound2-dev, mesa-common-dev, libx11-dev, libxrandr-dev, libxi-dev, xorg-dev, libgl1-mesa-dev, libglu1-mesa-dev as well


#### Get vcpkg

    git clone https://github.com/microsoft/vcpkg
    ./vcpkg/bootstrap-vcpkg.sh

### Get Raylib and run the template

Install Raylib with vcpkg:

    .\vcpkg install raylib:x64-linux

Clone this repository somewhere, open the `build.sh` and set the toolchain with the one inside your vcpkg folder

    TOOLCHAIN=somewhere_in_your_computer/vcpkg/scripts/buildsystems/vcpkg.cmake

Run `build.sh` and you are ready to go, a makefile should be ready in the build folder inside the repository.

Add your files inside the src folder and edit the `./src/CMakeLists.txt` accordingly.

** THE REST OF THE FILE IS THE ACTUAL TEMPLATE **


## $(Game Title)

![$(Game Title)](screenshots/screenshot000.png "$(Game Title)")

### Description

$(Your Game Description)

### Features

 - $(Game Feature 01)
 - $(Game Feature 02)
 - $(Game Feature 03)

### Controls

Keyboard:
 - $(Game Control 01)
 - $(Game Control 02)
 - $(Game Control 03)

### Screenshots

_TODO: Show your game to the world, animated GIFs recommended!._

### Developers

 - $(Developer 01) - $(Role/Tasks Developed)
 - $(Developer 02) - $(Role/Tasks Developed)
 - $(Developer 03) - $(Role/Tasks Developed)

### Links

 - YouTube Gameplay: $(YouTube Link)
 - itch.io Release: $(itch.io Game Page)
 - Steam Release: $(Steam Game Page)

### License

This game sources are licensed under an unmodified zlib/libpng license, which is an OSI-certified, BSD-like license that allows static linking with closed source software. Check [LICENSE](LICENSE) for further details.

$(Additional Licenses)

*Copyright (c) $(Year) $(User Name) ($(User Twitter/GitHub Name))*
