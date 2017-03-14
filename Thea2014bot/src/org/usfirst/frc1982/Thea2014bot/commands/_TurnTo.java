package org.usfirst.frc1982.Thea2014bot.commands;

import org.usfirst.frc1982.Thea2014bot.Robot;
import org.usfirst.frc1982.Thea2014bot.RobotMap;

import edu.wpi.first.wpilibj.command.PIDCommand;

public class _TurnTo extends PIDCommand {
	
	private boolean done = false;
	private int ctr;
	private double speed;
	
	public _TurnTo(double degrees, double speed) {
		super(-0.5/90.0, 0.0, 0.0);
		setSetpoint(0);
		setSetpointRelative(degrees);
		this.speed = Math.abs(speed);
	}
	
	protected void initialize() {
		System.out.println("_TurnTo command running");
		Robot.gyro.reset();
		done = false;
		ctr = 0;
	}
	
	@Override
	protected double returnPIDInput() {
		double currentAng = Robot.gyro.getAngleZ()/4;
		return currentAng;
	}

	@Override
	protected void usePIDOutput(double output) {
		if (output > 0) {
			output += .6;
			if (output > speed) output = speed;
		} else if (output < 0) {
			output -= .6;
			if (output < -speed) output = -speed;
		}
		RobotMap.driveDriveTrain.arcadeDrive(0, output);
		if (output < .65 && output > -.65) ctr++;
		else ctr = 0;
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
