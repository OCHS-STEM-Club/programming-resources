# CMake FRC ARM toolchain file
# Author: Alejandro Zeise
# ---------------------------------------------------------
set(ARM_PREFIX arm-frc-linux-gnueabi)
set(CMAKE_SYSTEM_NAME Linux)
set(CMAKE_SYSTEM_VERSION 3)

if(CMAKE_HOST_WIN32)
    set(DRIVE_LETTER $ENV{homedrive})

    # This assumes the FRC toolchain is installed at %homedrive%:/frc
    # (On almost every system %homedrive% is C:/)
    set(CMAKE_C_COMPILER ${DRIVE_LETTER}/frc/bin/${ARM_PREFIX}-gcc.exe)
    set(CMAKE_CXX_COMPILER ${DRIVE_LETTER}/frc/bin/${ARM_PREFIX}-g++.exe)

    set(CMAKE_FIND_ROOT_PATH  ${DRIVE_LETTER}/frc)
else()
    # As it's UNIX, we'll assume it's on the system path.
    set(CMAKE_C_COMPILER ${ARM_PREFIX}-gcc.exe)
    set(CMAKE_CXX_COMPILER ${ARM_PREFIX}-g++.exe)

    set(CMAKE_FIND_ROOT_PATH /usr/${ARM_PREFIX})
endif(CMAKE_HOST_WIN32)

set_PROPERTY(GLOBAL PROPERTY TARGET_SUPPORTS_SHARED_LIBS TRUE)

set(CMAKE_FIND_ROOT_PATH_MODE_PROGRAM BOTH)
set(CMAKE_FIND_ROOT_PATH_MODE_LIBRARY BOTH)
set(CMAKE_FIND_ROOT_PATH_MODE_INCLUDE BOTH)
set(CMAKE_FIND_ROOT_PATH_MODE_PACKAGE NEVER)