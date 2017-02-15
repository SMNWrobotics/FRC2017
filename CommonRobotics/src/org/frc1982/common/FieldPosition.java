package org.frc1982.common;

import edu.wpi.first.wpilibj.smartdashboard.SendableChooser;

public enum FieldPosition {
	ONE( "One" )
	, TWO( "Two" )
	, THREE( "Three" )
	;
	
	public static final String TITLE = "Field Position";
	public static SendableChooser<FieldPosition> getFieldPosition() {
		SendableChooser<FieldPosition> fieldPosition = new SendableChooser<FieldPosition>();
		
		for (FieldPosition fp : FieldPosition.values()) {
			fieldPosition.addObject( fp.getLabel(), fp );
		}
		
		return fieldPosition;
	}
	
	private final String label;
	public String getLabel() { return label; }
	
	private FieldPosition( String label ) {
		this.label = label;
	}
}
