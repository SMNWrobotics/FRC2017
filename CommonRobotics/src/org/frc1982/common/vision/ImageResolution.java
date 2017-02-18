package org.frc1982.common.vision;

public enum ImageResolution {
	  SMALL( 160, 120 )
	, MEDIUM( 320, 240 )
	, LARGE( 640, 480 )
	, TOO_LARGE( 1280, 720 )
	;
	
	private final int width;
	private final int height;
	
	private ImageResolution( int width, int height )
	{
		this.width = width;
		this.height = height;
	}
	
	public int getWidth() { return width; }
	public int getHeight() { return height; }
}
