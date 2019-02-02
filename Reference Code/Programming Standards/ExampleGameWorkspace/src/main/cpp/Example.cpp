/* Example.cpp
 * 2/2/19
 * Jonathan Phung
 * RIO Firmware Ver - 2019
 * FRC Lib Ver - 2019
 * Motor Controller Types - Spark MAX, Talon SRX
 * Motor Controller Firmware Ver - 2019
 * Purpose - Puts the values currently being read from the joystick on the Smart Dashboard
 */

//Includes the corresponding header file for Example.cpp
#include "Example.hpp"

//Initializes the ExampleManager class to be constructed in Robot.cpp
ExampleManager::ExampleManager() {
	//Constructs a new DriveManager instance to be used within the ExampleManager
	driveManager = new DriveManager();

	//Constructs a new stick object to be used within the ExampleManager
	stick = new frc::Joystick{0};

	//Initializes the StickValue doubles defined within the corresponding header
	xStickValue = new double;
	yStickValue = new double;
	zStickValue = new double;
}

//Initializes the example function as a part of the Examplemanager
void ExampleManager::example() {
	//Gets the value of the axes from the joystick and sets them to their corresponding variable
	xStickValue = stick->GetRawAxis(0);
	yStickValue = stick->GetRawAxis(1);
	zStickValue = stick->GetRawAxis(2);

	/*Checks each axis value for whether or not it's less than the deadband constant
	* If true, set the corresponding axis var to 0
	* Otherwise, set the corresponding axis var to the current stick axis*/
	if(abs(xStickValue) < JOYSTICK_DEADBAND) {
		xStickValue = 0
	}

	if(abs(yStickValue) < JOYSTICK_DEADBAND) {
			yStickValue = 0
		}

	if(abs(zStickValue) < JOYSTICK_DEADBAND) {
			zStickValue = 0
		}

	//Puts the axis value onto the Smart Dashboard as the corresponding axis
	frc::SmartDashboard::PutNumber("X Stick Value", xStickValue);
	frc::SmartDashboard::PutNumber("Y Stick Value", yStickValue);
	frc::SmartDashboard::PutNumber("Z Stick Value", zStickValue);

	//Sets the motor
}
