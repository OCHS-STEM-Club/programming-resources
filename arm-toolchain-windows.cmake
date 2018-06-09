# CMake FRC ARM toolchain file
# Author: Alejandro Zeise
# ---------------------------------------------------------
SET(CMAKE_SYSTEM_NAME Linux)
SET(CMAKE_SYSTEM_VERSION 3)

# This assumes the FRC toolchain is installed at C:/frc
SET(CMAKE_C_COMPILER C:/frc/bin/arm-frc-linux-gnueabi-gcc.exe)
SET(CMAKE_CXX_COMPILER C:/frc/bin/arm-frc-linux-gnueabi-g++.exe)

SET(CMAKE_FIND_ROOT_PATH  C:/frc)

SET(CMAKE_FIND_ROOT_PATH_MODE_PROGRAM NEVER)
SET(CMAKE_FIND_ROOT_PATH_MODE_LIBRARY ONLY)
SET(CMAKE_FIND_ROOT_PATH_MODE_INCLUDE ONLY)
