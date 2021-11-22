cmake_minimum_required(VERSION 3.2)

project(RaylibTemplate ${VERSION} LANGUAGES C CXX)

if(NOT DEFINED CMAKE_TOOLCHAIN_FILE)
	MESSAGE(STATUS "No toolchain is defined, this could cause issues with vcpkg")
else()
	MESSAGE(STATUS "Using toolchain in ${CMAKE_TOOLCHAIN_FILE} ")
endif()

if(EXISTS "ConanWrapper.cmake")
	include("ConanWrapper.cmake")
else()
	MESSAGE( STATUS "Conan is not used")
endif()


if(CMAKE_SIZEOF_VOID_P EQUAL 8)
	set(OBT_64 ON)
	MESSAGE( STATUS "Running on x64")
else()
	set(OBT_32 ON)
	MESSAGE( STATUS "Running on x86")
endif()

MESSAGE( STATUS "Looking for libs ... " )
	find_package(Threads REQUIRED )
	find_package(raylib REQUIRED)
	# just in case the name was not uppercase ( Conan... )
	if(NOT DEFINED RAYLIB_LIBRARIES)
		set(RAYLIB_LIBRARIES ${raylib_LIBRARIES})
	endif()
	if(NOT DEFINED RAYLIB_INCLUDE_DIRS)
		set(RAYLIB_INCLUDE_DIRS ${raylib_INCLUDE_DIRS})
	endif()

	MESSAGE(STATUS "--> Raylib is in Libs[${RAYLIB_LIBRARIES}] Includes[${RAYLIB_INCLUDE_DIRS}]")
	MESSAGE(STATUS "--> Pthread in " ${CMAKE_THREAD_LIBS_INIT})#pthread library
	MESSAGE(STATUS "--> ldl in " ${CMAKE_DL_LIBS})#dl libs

MESSAGE( STATUS "All libs found. " )

set(CMAKE_C_STANDARD 11)
set(CMAKE_RUNTIME_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR}/bin)
set(CMAKE_LIBRARY_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR}/lib)
set(CMAKE_ARCHIVE_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR}/lib)

set(CMAKE_POSITION_INDEPENDENT_CODE ON)
set(CMAKE_LINK_WHAT_YOU_USE ON)
set_property(GLOBAL PROPERTY USE_FOLDERS ON)
set(PROJECT_INSTALL_DIR "bin")

add_subdirectory(src)