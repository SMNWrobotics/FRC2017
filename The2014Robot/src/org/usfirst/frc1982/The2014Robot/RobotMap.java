// RobotBuilder Version: 2.0
//
// This file was generated by RobotBuilder. It contains sections of
// code that are automatically generated and assigned by robotbuilder.
// These sections will be updated in the future when you export to
// Java from RobotBuilder. Do not put any code or make any change in
// the blocks indicating autogenerated code or it will be lost on an
// update. Deleting the comments indicating the section will prevent
// it from being updated in the future.


package org.usfirst.frc1982.The2014Robot;

// BEGIN AUTOGENERATED CODE, SOURCE=ROBOTBUILDER ID=IMPORTS
import edu.wpi.first.wpilibj.Jaguar;
import edu.wpi.first.wpilibj.RobotDrive;
import edu.wpi.first.wpilibj.SpeedController;

    // END AUTOGENERATED CODE, SOURCE=ROBOTBUILDER ID=IMPORTS
import edu.wpi.first.wpilibj.livewindow.LiveWindow;

/**
 * The RobotMap is a mapping from the ports sensors and actuators are wired into
 * to a variable name. This provides flexibility changing wiring, makes checking
 * the wiring easier and significantly reduces the number of magic numbers
 * floating around.
 */
public class RobotMap {
    // BEGIN AUTOGENERATED CODE, SOURCE=ROBOTBUILDER ID=DECLARATIONS
    public static SpeedController driveLeft;
    public static SpeedController driveRight;
    public static RobotDrive driveDriveTrain;

    // END AUTOGENERATED CODE, SOURCE=ROBOTBUILDER ID=DECLARATIONS

    public static void init() {
        // BEGIN AUTOGENERATED CODE, SOURCE=ROBOTBUILDER ID=CONSTRUCTORS
        driveLeft = new Jaguar(1);
        LiveWindow.addActuator("Drive", "Left", (Jaguar) driveLeft);
        
        driveRight = new Jaguar(2);
        LiveWindow.addActuator("Drive", "Right", (Jaguar) driveRight);
        
        driveDriveTrain = new RobotDrive(driveLeft, driveRight);
        
        driveDriveTrain.setSafetyEnabled(true);
        driveDriveTrain.setExpiration(0.1);
        driveDriveTrain.setSensitivity(0.5);
        driveDriveTrain.setMaxOutput(1.0);
        driveDriveTrain.setInvertedMotor(RobotDrive.MotorType.kRearLeft, true);

    // END AUTOGENERATED CODE, SOURCE=ROBOTBUILDER ID=CONSTRUCTORS
    }
}