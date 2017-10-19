package org.usfirst.frc1982.Robot2017.commands;

import org.usfirst.frc1982.Robot2017.Robot;

import edu.wpi.first.wpilibj.command.Command;

public class _Turn extends Command {
	
	private double speed = 0.0;
	
	public _Turn(double speed) {
		this.speed = speed;
	}
	
	@Override
	protected void initialize() {
		
	}
	
	@Override
	protected void execute() {
		Robot.driver.setMotorsMecanum(0.0, 0.0, speed);
	}
	
	
	@Override
	protected boolean isFinished() {
		
		return false;
	}

}
