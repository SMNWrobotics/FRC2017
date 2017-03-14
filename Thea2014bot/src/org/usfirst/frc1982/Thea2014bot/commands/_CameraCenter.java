package org.usfirst.frc1982.Thea2014bot.commands;

import org.frc1982.common.vision.CameraView;
import org.usfirst.frc1982.Thea2014bot.Robot;
import org.usfirst.frc1982.Thea2014bot.RobotMap;

import edu.wpi.first.wpilibj.command.Command;

public class _CameraCenter extends Command {
    
	private static final double maxX = 1.10;
	private static final double minX = 0.90;
	
	private CameraView camView;
	private double targx;
	
	public _CameraCenter(CameraView camView) {
		this.camView = camView;
		
    }

    // Called just before this Command runs the first time
    protected void initialize() {
    	targx = CameraView.iRes.getWidth() / 2;
    	System.out.println( "Target X value: " + targx );
    	currentX = 0.0;
    }
    
    private double currentX = 0.0;
    
    // Called repeatedly when this Command is scheduled to run
    protected void execute() {
    	currentX = camView.getCenterX();
    	
    	System.out.println("Camera Center X (pixels): " + currentX);
    	
    	if (currentX == -1) {
    		return;
    	}
    	
    	double dif = currentX / targx;
    	
    	System.out.println("Percentage off: " + dif);
    	
    	if ( dif < minX || dif > maxX ) {
    		//target is off center
    		if ( currentX > targx ) {
    			//turn left
    			System.out.println("turnn left");
//    			Robot.driver.setMotorsMecanum(0,0,0.2);
    			RobotMap.driveDriveTrain.arcadeDrive(0.0, -0.59);
    		} else if ( currentX < targx ) {
    			//turn right
    			System.out.println("turnn right");
//    			Robot.driver.setMotorsMecanum(0,0,-0.2);
    			RobotMap.driveDriveTrain.arcadeDrive(0.0, 0.59);
    		}
    	} else {
    		System.out.println("Driving Straight");
//    		Robot.driver.setMotorsMecanum(0,0.2,0);
    		RobotMap.driveDriveTrain.arcadeDrive(-0.5, 0.0);
    	}
    }

    // Make this return true when this Command no longer needs to run execute()
    protected boolean isFinished() {
//    	if ( currentX < 0 ) {
//    		return false;
//    	}
//    	double dif = currentX / targx;
//    	if ( dif < maxX && dif > minX ) {
//    		return true;
//    	}
        return false;
    }

    // Called once after isFinished returns true
    protected void end() {
    	
    }

    // Called when another command which requires one or more of the same
    // subsystems is scheduled to run
    protected void interrupted() {
    	
    }
}
