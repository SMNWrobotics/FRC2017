package org.usfirst.frc1982.Thea2014bot.commands;

import org.frc1982.common.vision.CameraView;

import edu.wpi.first.wpilibj.command.Command;

public class _CameraCenter extends Command {
    
	private static final double maxX = 1.05;
	private static final double minX = 0.95;
	
	private CameraView camView;
	private double targx;
	
	public _CameraCenter(CameraView camView) {
		this.camView = camView;
		
    }

    // Called just before this Command runs the first time
    protected void initialize() {
    	targx = CameraView.iRes.getWidth() / 2;
    	System.out.println( "Target X value: " + targx );
    }
    
    private double currentX = 0.0;
    
    // Called repeatedly when this Command is scheduled to run
    protected void execute() {
    	currentX = camView.getCenterX();
    	if ( currentX > targx ) {
    		//turn left
    	} else {
    		//turn right
    	}
    }

    // Make this return true when this Command no longer needs to run execute()
    protected boolean isFinished() {
    	if ( currentX < 0 ) {
    		return false;
    	}
    	double dif = currentX / targx;
    	if ( dif < maxX && dif > minX ) {
    		return true;
    	}
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
