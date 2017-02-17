package org.frc1982.common;

import edu.wpi.first.wpilibj.smartdashboard.SendableChooser;

public enum AllianceChoice {
	BLUE( "Blue" )
	, RED( "Red" )
	;
	
	public static final String TITLE = "AllianceChoice";
	
	public static SendableChooser<AllianceChoice> getAllianceChoice() {
		SendableChooser<AllianceChoice> alliances = new SendableChooser<AllianceChoice>();
		
		for (AllianceChoice a : AllianceChoice.values()) {
			alliances.addObject( a.getLabel(), a );
		}
		
		return alliances;
	}

	private final String label;
	public String getLabel() { return label; }
	
	private AllianceChoice( String label ) {
		this.label = label;
	}
}
