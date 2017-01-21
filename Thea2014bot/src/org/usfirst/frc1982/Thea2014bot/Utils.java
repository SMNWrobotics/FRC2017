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
			List<Point> pList = next.toList();
			ostr.append( "\n\tList<Point> size = " ).append( pList.size() );
		}
		
		System.out.println( ostr.toString() );
	}
}
