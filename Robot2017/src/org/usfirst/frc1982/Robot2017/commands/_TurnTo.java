package org.usfirst.frc1982.Robot2017.commands;

import org.usfirst.frc1982.Robot2017.Robot;
import org.usfirst.frc1982.Robot2017.RobotMap;

import edu.wpi.first.wpilibj.command.PIDCommand;

public class _TurnTo extends PIDCommand {
	
	private boolean done = false;
	private int ctr;
	private double maxSpeed;
	private double deadZone = 0.13;
	private double setPoint;
	
	private double oldAng;
	
	private volatile float out = (float) 0.0;
	
	public _TurnTo(double degrees, double maxSpeed) {
		super(1.0/90.0, 0.0, 0.0);
		setSetpoint(0);
		setSetpointRelative(degrees);
		setPoint = degrees;
		this.maxSpeed = Math.abs(maxSpeed);
		oldAng = 0.0;
	}
	
	protected void initialize() {
		Robot.gyro.reset();
		done = false;
		ctr = 0;
		out = (float) 0.0;
	}
	
	@Override
	protected double returnPIDInput() {
		double currentAng = Robot.gyro.getAngleZ()/4;
		System.out.println("Gyro Angle: " + Robot.gyro.getAngleZ()/4);
		
		double diff = Math.abs(setPoint - currentAng);
		if (diff < 5.0) { ctr++; }
		else { ctr = 0; }
		
		
		
		
		return currentAng;
	}
	
	protected void execute() {
//		RobotMap.driveDriveTrain.mecanumDrive_Cartesian(0, 0, out, 0);
		Robot.driver.setMotorsMecanum(0,0,out);
	}

	@Override
	protected void usePIDOutput(double output) {
		if (output > 0) {
			if (output < deadZone) output = deadZone;
		} else {
			if (output > -deadZone) output = -deadZone;
		}
		if (output > maxSpeed) output = maxSpeed;
		if (output < -maxSpeed) output = -maxSpeed;
		
		System.out.println("PID Output: " + output);
		
//		if (output < cutOff && output > -cutOff) ctr++;
//		if (Robot.gyro.getAngleZ())
//		else ctr = 0;
		
//		output = output * maxSpeed;
		
		
		
		
		out = (float) output;
		
	}

	@Override
	protected boolean isFinished() {
		if (ctr > 5) {
			done = true;
		} else {
			done = false;
		}
		return done;
	}

}
