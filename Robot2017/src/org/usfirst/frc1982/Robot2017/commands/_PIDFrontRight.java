package org.usfirst.frc1982.Robot2017.commands;

import org.usfirst.frc1982.Robot2017.RobotMap;

import edu.wpi.first.wpilibj.Encoder;
import edu.wpi.first.wpilibj.command.PIDCommand;

public class _PIDFrontRight extends PIDCommand {

	private double setPoint;
	private Encoder encoder;
	
	private volatile float out = (float) 0.0;
	
	public _PIDFrontRight(Encoder enc) {
		super( 1.0 / 78.0 ,0.0,0.0);
		setPoint = 0.0;
		setSetpoint(setPoint);
		this.encoder = enc;
	}
	
	public void setSetpoint(double setPoint) {
		this.setPoint = setPoint;
	}
	
	@Override
	protected void initialize() {
		setSetpoint(0.0);
		encoder.reset();
	}
	
	@Override
	protected void execute() {
		setSetpoint(setPoint);
		RobotMap.driveFrontRight.set(out);
		System.out.println("Front Right PID Output: " + out);
	}
	
	@Override
	protected double returnPIDInput() {
		double input = encoder.getRate();
		System.out.println("Front Right Encoder rate: " + input);
		return input;
	}

	@Override
	protected void usePIDOutput(double output) {
		out = (float) output;
	}

	@Override
	protected boolean isFinished() {
		return false;
	}

}
