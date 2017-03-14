package org.frc1982.common;

import edu.wpi.first.wpilibj.smartdashboard.SendableChooser;

public enum Goal {
	DO_NOTHING( "Do Nothing" )
	, BASELINE( "BaseLine" )
	, GEAR( "Gear" )
	, GEAR_AND_BASELINE( "Gear and Baseline" )
	;
	
	public static final String TITLE = "Goal";
	
	public static SendableChooser<Goal> getGoal() {
		SendableChooser<Goal> goal = new SendableChooser<Goal>();
		
		for (Goal g : Goal.values()) {
			goal.addObject( g.getLabel(), g );
		}
		
		return goal;
	}
	
	private final String label;
	public String getLabel() { return label; }
	
	private Goal( String label ) {
		this.label = label;
	}
}
