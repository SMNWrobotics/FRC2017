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

import org.usfirst.frc1982.Robot2017.commands.AutoTest;
import org.usfirst.frc1982.Robot2017.subsystems.Drive;
import org.usfirst.frc1982.Robot2017.subsystems.Winch;

import edu.wpi.cscore.UsbCamera;
import edu.wpi.first.wpilibj.CameraServer;
import edu.wpi.first.wpilibj.IterativeRobot;
import edu.wpi.first.wpilibj.command.Command;
import edu.wpi.first.wpilibj.command.Scheduler;
import edu.wpi.first.wpilibj.livewindow.LiveWindow;
import edu.wpi.first.wpilibj.smartdashboard.SmartDashboard;

/**
 * The VM is configured to automatically run this class, and to call the
 * functions corresponding to each mode, as described in the IterativeRobot
 * documentation. If you change the name of this class or the package after
 * creating this project, you must also update the manifest file in the resource
 * directory.
 */
public class Robot extends IterativeRobot {

    Command autonomousCommand;
    public static ADIS16448_IMU gyro;

    public static OI oi;
    // BEGIN AUTOGENERATED CODE, SOURCE=ROBOTBUILDER ID=DECLARATIONS
    public static Drive drive;
    public static Winch winch;

    // END AUTOGENERATED CODE, SOURCE=ROBOTBUILDER ID=DECLARATIONS

    /**
     * This function is run when the robot is first started up and should be
     * used for any initialization code.
     */
    public void robotInit() {
    RobotMap.init();
        // BEGIN AUTOGENERATED CODE, SOURCE=ROBOTBUILDER ID=CONSTRUCTORS
        drive = new Drive();
        winch = new Winch();

    // END AUTOGENERATED CODE, SOURCE=ROBOTBUILDER ID=CONSTRUCTORS
        // OI must be constructed after subsystems. If the OI creates Commands
        //(which it very likely will), subsystems are not guaranteed to be
        // constructed yet. Thus, their requires() statements may grab null
        // pointers. Bad news. Don't move it.
        oi = new OI();

        // instantiate the command used for the autonomous period
        // BEGIN AUTOGENERATED CODE, SOURCE=ROBOTBUILDER ID=AUTONOMOUS

        autonomousCommand = new AutoTest();

    // END AUTOGENERATED CODE, SOURCE=ROBOTBUILDER ID=AUTONOMOUS
        
        gyro = new ADIS16448_IMU();
        gyro.calibrate();
        gyro.reset();
        
        UsbCamera cam = CameraServer.getInstance().startAutomaticCapture();
        cam.setBrightness(2);
        cam.setResolution(320, 240);
    }

    /**
     * This function is called when the disabled button is hit.
     * You can use it to reset subsystems before shutting down.
     */
    public void disabledInit(){

    }

    public void disabledPeriodic() {
        Scheduler.getInstance().run();
    }

    public void autonomousInit() {
        // schedule the autonomous command (example)
    	RobotMap.driveEncoderBackRight.reset();
        RobotMap.driveEncoderBackLeft.reset();
        RobotMap.driveEncoderFrontRight.reset();
        RobotMap.driveEncoderFrontLeft.reset();
        gyro.reset();
        if (autonomousCommand != null) autonomousCommand.start();
    }

    /**
     * This function is called periodically during autonomous
     */
    public void autonomousPeriodic() {
        Scheduler.getInstance().run();
    }

    public void teleopInit() {
        // This makes sure that the autonomous stops running when
        // teleop starts running. If you want the autonomous to
        // continue until interrupted by another command, remove
        // this line or comment it out.
        if (autonomousCommand != null) autonomousCommand.cancel();
        RobotMap.driveEncoderBackRight.reset();
        RobotMap.driveEncoderBackLeft.reset();
        RobotMap.driveEncoderFrontRight.reset();
        RobotMap.driveEncoderFrontLeft.reset();
        gyro.reset();
    }
    
    /**
     * This function is called periodically during operator control
     */
    public void teleopPeriodic() {
        Scheduler.getInstance().run();
//        System.out.println("Average Encoder Value: " + (RobotMap.driveEncoderBackLeft.get() + RobotMap.driveEncoderBackRight.get() + RobotMap.driveEncoderFrontLeft.get() + RobotMap.driveEncoderFrontRight.get()) / 4);
//        System.out.println("Gyro Z Angle/4: " + gyro.getAngleZ()/4);
        SmartDashboard.putNumber("Raw Gyro Z", gyro.getAngleZ());
        SmartDashboard.putNumber("BackRightEncoder", RobotMap.driveEncoderBackRight.get());
        SmartDashboard.putNumber("BackLeftEncoder", RobotMap.driveEncoderBackLeft.get());
        SmartDashboard.putNumber("FrontRightEncoder", RobotMap.driveEncoderFrontRight.get());
        SmartDashboard.putNumber("FrontLeftEncoder", RobotMap.driveEncoderFrontLeft.get());
    }

    /**
     * This function is called periodically during test mode
     */
    public void testPeriodic() {
        LiveWindow.run();
    }
}
