package org.usfirst.frc1982.Thea2014bot;

import java.util.ArrayList;
import java.util.List;

import org.opencv.core.MatOfPoint;
import org.opencv.core.Point;

class Utils
{
	static void show( ArrayList<MatOfPoint> arrayList )
	{
		StringBuilder ostr = new StringBuilder();
		
		ostr.append( "ArrayList<MatOfPoint> size = " ).append( arrayList.size() );
		
		for (MatOfPoint next : arrayList)
		{
			ostr.append( show( next.toList() ));
			
		}
		
		System.out.println( ostr.toString() );
	}
	
	private static String show( List<Point> pList )
	{
		StringBuilder ostr = new StringBuilder();
		
		ostr.append( "\n\tList<Point> size = " ).append( pList.size() );
		
		if (pList.size() > 0) ostr.append( " :: " );
		boolean first = true;
		for (Point p : pList)
		{
			if (!first) ostr.append(", " );
			ostr.append( "(" ).append( p.x ).append(", " ).append( p.y ).append( ")" );
			first = false;
		}
		
		return ostr.toString();
	}
}
