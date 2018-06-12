# Find WPILib headers and shared libraries for compiling FRC Robot code.
# In order for this to work you need to have the WPILib installed in your home folder under "wpilib"
# The eclipse plugin does this automatically, so that's what this CMake script is written for.
#
# Author: Alejandro Zeise
# -------------------------------------------------------------------------------

if (CMAKE_HOST_WIN32)
    set (WPILIB_DIR $ENV{userprofile}/wpilib)
    message ("WPILib Directory is " ${WPILIB_DIR})
elseif (CMAKE_HOST_APPLE)
    set( WPILIB_DIR ~/wpilib)
    message ("WPILib Directory is " ${WPILIB_DIR})
elseif (CMAKE_HOST_UNIX)
    set (WPILIB_DIR ~/wpilib)
    message ("WPILib Directory is " ${WPILIB_DIR})
endif (CMAKE_HOST_WIN32)

# Find includes
find_path (WPILib_INCLUDE_DIR 
    NAMES WPILib.h
    PATHS
        ${WPILIB_DIR}/cpp/current/include
)

# Normal Shared Libs
find_library (WPILib_LIBS
	NAMES libwpilibc.so 
    PATHS 
        ${WPILIB_DIR}/common/current/lib/linux/athena/shared
)

# Reflibs
find_library (WPILib_REFLIB
    NAMES libwpi.so
    PATHS
        ${WPILIB_DIR}/cpp/current/reflib/linux/athena/shared
)

# Handle Args
include (FindPackageHandleStandardArgs)
find_package_handle_standard_args (WPILib DEFAULT_MSG WPILib_INCLUDE_DIR WPILib_LIBS WPILib_REFLIB)

if (WPILib_FOUND)
    set (WPILib_INCLUDE_DIRS ${WPILib_INCLUDE_DIR})
	set (WPILib_LIBRARIES ${WPILib_LIBS} ${WPILib_REFLIB})
endif (WPILib_FOUND)