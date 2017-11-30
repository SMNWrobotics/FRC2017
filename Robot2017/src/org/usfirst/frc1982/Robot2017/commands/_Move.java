// RobotBuilder Version: 2.0
//
// This file was generated by RobotBuilder. It contains sections of
// code that are automatically generated and assigned by robotbuilder.
// These sections will be updated in the future when you export to
// Java from RobotBuilder. Do not put any code or make any change in
// the blocks indicating autogenerated code or it will be lost on an
// update. Deleting the comments indicating the section will prevent
// it from being updated in the future.


package org.usfirst.frc1982.Robot2017.commands;
import org.usfirst.frc1982.Robot2017.Robot;
import org.usfirst.frc1982.Robot2017.RobotMap;

import edu.wpi.first.wpilibj.command.Command;

/**
 *
 */
public class _Move extends Command {

    // BEGIN AUTOGENERATED CODE, SOURCE=ROBOTBUILDER ID=VARIABLE_DECLARATIONS
    private double m_Distance;
    private double m_Speed;
 
    // END AUTOGENERATED CODE, SOURCE=ROBOTBUILDER ID=VARIABLE_DECLARATIONS
    
//    private double convDist;
//    private double FLconversion;
//    private double FRconversion;
//    private double BLconversion;
//    private double BRconversion;
//    private double startencval;
    
    // BEGIN AUTOGENERATED CODE, SOURCE=ROBOTBUILDER ID=CONSTRUCTOR
    public _Move(double Distance, double Speed) {

    // END AUTOGENERATED CODE, SOURCE=ROBOTBUILDER ID=CONSTRUCTOR
        // BEGIN AUTOGENERATED CODE, SOURCE=ROBOTBUILDER ID=VARIABLE_SETTING
        m_Distance = Distance;
        m_Speed = Speed;

        // END AUTOGENERATED CODE, SOURCE=ROBOTBUILDER ID=VARIABLE_SETTING
        // BEGIN AUTOGENERATED CODE, SOURCE=ROBOTBUILDER ID=REQUIRES
        requires(Robot.drive);

    // END AUTOGENERATED CODE, SOURCE=ROBOTBUILDER ID=REQUIRES
//        distance is in inches
    }

    // Called just before this Command runs the first time
    protected void initialize() {
//    	startencval = getAverageDist();
    	RobotMap.driveEncoderFrontRight.reset();
    }

    // Called repeatedly when this Command is scheduled to run
    protected void execute() {
    	RobotMap.driveDriveTrain.mecanumDrive_Cartesian(0, m_Speed, 0, 0);
//    	Robot.driver.setMotorsMecanum(0, m_Speed, 0);
    }

    // Make this return true when this Command no longer needs to run execute()
    protected boolean isFinished() {
    	System.out.println("Average Distance: " + getAverageDist());
//    	if( Math.abs(getAverageDist()) >= Math.abs(startencval) + Math.abs(m_Distance) ) {
    	if (Math.abs(getAverageDist()) >= Math.abs(m_Distance)-21) {
    		return true;
    	} else {
    		return false;
    	}
    }

    // Called once after isFinished returns true
    protected void end() {
    	RobotMap.driveDriveTrain.mecanumDrive_Cartesian(0, 0, 0, 0);
//    	Robot.driver.setMotorsMecanum(0, 0, 0);
    }

    // Called when another command which requires one or more of the same
    // subsystems is scheduled to run
    protected void interrupted() {
//    	Robot.driver.setMotorsMecanum(0, 0, 0);
    	RobotMap.driveDriveTrain.mecanumDrive_Cartesian(0, 0, 0, 0);
    }
    
    private double getAverageDist() {
    	//returns the average distance (found from the front two encoders)
    	return (RobotMap.driveEncoderFrontRight.getDistance());// + RobotMap.driveEncoderFrontLeft.getDistance())/2;
    }
}
