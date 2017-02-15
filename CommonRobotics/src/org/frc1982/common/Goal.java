package org.frc1982.common;

import edu.wpi.first.wpilibj.smartdashboard.SendableChooser;

public enum Goal {
	DO_NOTHING( "Do Nothing" )
	, BASELINE( "BaseLine" )
	, GEAR( "Gear" )
	;
	
	public static final String TITLE = "Goal";
	
	private final String label;
	public String getLabel() { return label; }
	
	public static SendableChooser<Goal> getGoal() {
		SendableChooser<Goal> goal = new SendableChooser<Goal>();
		
		for (Goal g : Goal.values()) {
			goal.addObject( g.getLabel(), g );
		}
		
		return goal;
	}
	
	private Goal( String label ) {
		this.label = label;
	}
}
