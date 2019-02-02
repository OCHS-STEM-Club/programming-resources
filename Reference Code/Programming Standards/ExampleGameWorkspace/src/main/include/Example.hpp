/* Example.hpp
 * 2/2/19
 * Jonathan Phung
 * Rio Firmware Version - 2019
 * FRC Lib Version - 2019
 * Motor Controllers in Use - Spark MAX, Talon SRX
 * Motor Controller Firmware Ver - 2019
 * Purpose - Header file for Example.cpp
 */

//Ensures the necessary includes are only called once within the program
#pragma once

//Includes iostream, a standard C++ lib used for accepting input and writing outputs within the program
#include <iostream>
//Includes the WPILib, the all encompassing lib that FRC uses to code
#include <frc/WPILIb.h>
//Includes Joystick.h, a header file in the WPILib that allows for joystick functionalilty within the code
#include <frc/Joystick.h>
//Includes stdlib.h, the header that contains the libs necessary for the math used in Example.cpp
#include <stdlib.h>

//Defines the constant used for the deadband of the joystick axes
#define JOYSTICK_AXIS_DEADBAND 0.1

//Initializes a pointer to a joystick object called stick
frc::Joystick *stick;

//Initializes the pointers to the doubles used to store the values of the axes of the joystick
double *xStickValue;
double *yStickValue;
double *zStickValue;
