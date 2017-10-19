package org.usfirst.frc1982.Robot2017;

import org.frc1982.common.Goal;
import org.usfirst.frc1982.Robot2017.commands.AutoDoNothing;
import org.usfirst.frc1982.Robot2017.commands.AutoLeft;
import org.usfirst.frc1982.Robot2017.commands.AutoMid;
import org.usfirst.frc1982.Robot2017.commands.AutoRight;

import edu.wpi.first.wpilibj.DriverStation.Alliance;
import edu.wpi.first.wpilibj.command.Command;

public class AutonomousPrograms {

	public static Command mapToProgram(Alliance alliance, int position, Goal g) {
		if (g == Goal.DO_NOTHING) {
			System.out.println("AutoDoNothing selected");
			return new AutoDoNothing();
		} else { //goal is *hopefully* gear
			if ( position == 2 ) {
				//position selected is middle
				System.out.println("AutoMid selected");
				return new AutoMid();
			} else if ( position == 1 ) {
				//position selected is left
				System.out.println("AutoLeft selected");
				return new AutoLeft();
			} else if ( position == 3 ) {
				//position selected is right
				System.out.println("AutoRight selected");
				return new AutoRight();
			} else {
				//position 0 or other
				System.out.println("AutoDoNothing selected");
				return new AutoDoNothing();
			}
		}
	}
}
