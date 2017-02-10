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
		
		double[] minMax = new double[arrayList.size()];
		int ctr = 0;
		
		
		for (MatOfPoint next : arrayList)
		{
			List<Point> current = next.toList();
			if (!current.isEmpty()) {
				ostr.append( show( current ));
				minMax[ctr++] = getAverageX( current );
			}
				
		}
		ostr.append( findDist( minMax ) );
		
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
	
	public static double getAverageX( List<Point> pList ) {
		double adds = 0;
		for (Point p : pList) {
			adds += p.x;
		}
		if (!pList.isEmpty()) {
			return adds / pList.size();
		} else {
			return -1;
		}
	}
	
	public static double getAverageY( List<Point> pList ) {
		double adds = 0;
		for (Point p : pList) {
			adds += p.y;
		}
		if (!pList.isEmpty()) {
		return adds / pList.size();
		} else {
			return -1;
		}
	}
	
	private static String findDist(double[] minMax) {
		double min = 10000;
		double max = 0;
		for (double current : minMax) {
			if (current < min) min = current;
			if (current > max) max = current;
		}
		
		StringBuilder ostr = new StringBuilder();
		
		ostr.append( "\n\tMinimum x-value: " + min + ", Maximum x-value: " + max );
		ostr.append( ", Distance = ");
		ostr.append(max - min);
		
		return ostr.toString();
	}
}
