package org.usfirst.frc1982.Thea2014bot.commands;

import org.frc1982.common.vision.CameraView;

import edu.wpi.first.wpilibj.command.CommandGroup;

public class AutoTest extends CommandGroup {
	
	public AutoTest(CameraView camView) {
		
		addSequential( new _CameraCenter( camView ) );
		
	}
	
}
