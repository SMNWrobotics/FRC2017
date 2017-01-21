package org.usfirst.frc1982.Thea2014bot;

public enum ImageResolution {
	  SMALL( 320, 240 )
	, LARGE( 640, 480 )
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
