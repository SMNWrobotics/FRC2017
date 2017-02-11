// RobotBuilder Version: 2.0
//
// This file was generated by RobotBuilder. It contains sections of
// code that are automatically generated and assigned by robotbuilder.
// These sections will be updated in the future when you export to
// Java from RobotBuilder. Do not put any code or make any change in
// the blocks indicating autogenerated code or it will be lost on an
// update. Deleting the comments indicating the section will prevent
// it from being updated in the future.


package org.usfirst.frc1982.Robot2017;

import com.ctre.CANTalon;

// BEGIN AUTOGENERATED CODE, SOURCE=ROBOTBUILDER ID=IMPORTS
import edu.wpi.first.wpilibj.CounterBase.EncodingType;
import edu.wpi.first.wpilibj.Encoder;
import edu.wpi.first.wpilibj.PIDSourceType;
import edu.wpi.first.wpilibj.RobotDrive;
import edu.wpi.first.wpilibj.SpeedController;
import edu.wpi.first.wpilibj.Talon;
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
    public static SpeedController driveFrontLeft;
    public static SpeedController driveFrontRight;
    public static SpeedController driveBackLeft;
    public static SpeedController driveBackRight;
    public static RobotDrive driveDriveTrain;
    public static Encoder driveEncoderFrontLeft;
    public static Encoder driveEncoderFrontRight;
    public static Encoder driveEncoderBackLeft;
    public static Encoder driveEncoderBackRight;

    // END AUTOGENERATED CODE, SOURCE=ROBOTBUILDER ID=DECLARATIONS
    
    public static CANTalon winchwinchMotor;
    
    public static void init() {
        // BEGIN AUTOGENERATED CODE, SOURCE=ROBOTBUILDER ID=CONSTRUCTORS
        driveFrontLeft = new Talon(3);
        LiveWindow.addActuator("Drive", "FrontLeft", (Talon) driveFrontLeft);
        
        driveFrontRight = new Talon(0);
        LiveWindow.addActuator("Drive", "FrontRight", (Talon) driveFrontRight);
        
        driveBackLeft = new Talon(2);
        LiveWindow.addActuator("Drive", "BackLeft", (Talon) driveBackLeft);
        
        driveBackRight = new Talon(1);
        LiveWindow.addActuator("Drive", "BackRight", (Talon) driveBackRight);
        
        driveDriveTrain = new RobotDrive(driveFrontLeft, driveBackLeft,
              driveFrontRight, driveBackRight);
        
        driveDriveTrain.setSafetyEnabled(true);
        driveDriveTrain.setExpiration(0.1);
        driveDriveTrain.setSensitivity(0.5);
        driveDriveTrain.setMaxOutput(1.0);

        driveDriveTrain.setInvertedMotor(RobotDrive.MotorType.kFrontRight, true);
        driveDriveTrain.setInvertedMotor(RobotDrive.MotorType.kRearRight, true);
        driveEncoderFrontLeft = new Encoder(6, 7, false, EncodingType.k4X);
        LiveWindow.addSensor("Drive", "EncoderFrontLeft", driveEncoderFrontLeft);
        driveEncoderFrontLeft.setDistancePerPulse(1.0);
        driveEncoderFrontLeft.setPIDSourceType(PIDSourceType.kRate);
        driveEncoderFrontRight = new Encoder(0, 1, false, EncodingType.k4X);
        LiveWindow.addSensor("Drive", "EncoderFrontRight", driveEncoderFrontRight);
        driveEncoderFrontRight.setDistancePerPulse(1.0);
        driveEncoderFrontRight.setPIDSourceType(PIDSourceType.kRate);
        driveEncoderBackLeft = new Encoder(4, 5, false, EncodingType.k4X);
        LiveWindow.addSensor("Drive", "EncoderBackLeft", driveEncoderBackLeft);
        driveEncoderBackLeft.setDistancePerPulse(1.0);
        driveEncoderBackLeft.setPIDSourceType(PIDSourceType.kRate);
        driveEncoderBackRight = new Encoder(2, 3, false, EncodingType.k4X);
        LiveWindow.addSensor("Drive", "EncoderBackRight", driveEncoderBackRight);
        driveEncoderBackRight.setDistancePerPulse(1.0);
        driveEncoderBackRight.setPIDSourceType(PIDSourceType.kRate);

    // END AUTOGENERATED CODE, SOURCE=ROBOTBUILDER ID=CONSTRUCTORS
        winchwinchMotor = new CANTalon(5);
        LiveWindow.addActuator("Winch", "WinchMotor", (CANTalon) winchwinchMotor);
        
    }
}
