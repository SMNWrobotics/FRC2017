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
import edu.wpi.first.wpilibj.command.Command;

import org.frc1982.common.vision.CameraView;
import org.usfirst.frc1982.Robot2017.Robot;
import org.usfirst.frc1982.Robot2017.RobotMap;

/**
 *
 */
public class _CameraCenter extends Command {

	private static final double maxX = 1.20;
	private static final double minX = 0.80;
	
	private CameraView camView;
	private double targx;
	
	private int ctr = 0;
	
//	private double OldX = -1.0;

    private boolean drivingStraight = false;
	
	public _CameraCenter(CameraView camView) {
		this.camView = camView;
    }

    // Called just before this Command runs the first time
    protected void initialize() {
    	targx = CameraView.iRes.getWidth() / 2;
    	System.out.println( "Target X value: " + targx );
    	currentX = 0.0;
//    	OldX = 0.0;
    	ctr = 0;
    }
    
    private double currentX = 0.0;
    
    
    // Called repeatedly when this Command is scheduled to run
    protected void execute() {
    	currentX = camView.getCenterX();
    	
    	System.out.println("Camera Center X (pixels): " + currentX);
    	
    	if (currentX == -1) { //if it can't find the target(s)
    		System.out.println("Can't find the right number of contours");
    		
    		if (drivingStraight) { //if it was driving straight before it lost the contours
    			System.out.println("Continuing to drive straight");
    			
//    			Robot.driver.setMotorsMecanum(0,-0.25,0);
    			RobotMap.driveDriveTrain.mecanumDrive_Cartesian(0, -0.25, 0, 0);
    		}
    		ctr++;
    		
//    		if (OldX > targx) {
//    			//turn left
//    			System.out.println("turn left");
////    			RobotMap.driveDriveTrain.mecanumDrive_Cartesian(0, 0, 0.2, 0);
//    			Robot.driver.setMotorsMecanum(0,0,0.2);
//    		} else if (OldX < targx) {
//    			//turn right
//    			System.out.println("turn right");
////    			RobotMap.driveDriveTrain.mecanumDrive_Cartesian(0, 0, -0.2, 0);
//    			Robot.driver.setMotorsMecanum(0,0,-0.2);
//    		} else {
////    			Robot.driver.setMotorsMecanum(0, 0, .3);
//    		}
    		
    		return;
    	} else { //if it can find the targets...
//    		OldX = targx;
    		
    		double dif = currentX / targx;
    	
    		if ( dif > maxX || dif < minX ) { //if target is out of range
    			drivingStraight = false; 
    			//target is off center
    			if ( currentX > targx ) {
    				//turn left
    				
    				System.out.println("turning left");
    				
    				RobotMap.driveDriveTrain.mecanumDrive_Cartesian(0, 0, 0.2, 0);
//    				Robot.driver.setMotorsMecanum(0,0,0.2);
    			} else if ( currentX < targx ) {
    				//turn right
    				
    				System.out.println("turning right");
    				
    				RobotMap.driveDriveTrain.mecanumDrive_Cartesian(0, 0, -0.2, 0);
//    				Robot.driver.setMotorsMecanum(0,0,-0.2);
    			}
    		} else { //if target is in range
    			System.out.println("Driving straight");
    			
    			drivingStraight = true;
    			
    			RobotMap.driveDriveTrain.mecanumDrive_Cartesian(0, -0.25, 0, 0);
//    			Robot.driver.setMotorsMecanum(0,-0.25,0);
    		}
    	}
    }
    
    
    
    // Make this return true when this Command no longer needs to run execute()
    protected boolean isFinished() {
    	//TODO: look into accessing files from Roborio / getting networktables from the driving computer: found you can access both a USB drive on the roborio and the roborio's filing system
    	//TODO: Shuffleboard -> new dashboard!!!! - open source beta is on github currently!!
    	//TODO: document the IR sensor's values at different distances so that the 1.6 value makes sense -> wyatt in midst of this currently (11/1/2017)
    	double current = ((double) Robot.irSensor.getVoltage()) / 1000.0;
    	if (current >= 1.6) {
    		ctr++;
    	}
    	if (ctr > 10) {
			return true;	
		} else {
			return false;
		}
    }

    // Called once after isFinished returns true
    protected void end() {
    	
    }

    // Called when another command which requires one or more of the same
    // subsystems is scheduled to run
    protected void interrupted() {
    	
    }
}
