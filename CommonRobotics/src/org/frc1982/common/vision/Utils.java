package org.frc1982.common.vision;

import java.util.ArrayList;
import java.util.List;

import org.opencv.core.MatOfPoint;
import org.opencv.core.Point;

import edu.wpi.first.wpilibj.DriverStation;

public class Utils
{
	public static void show( ArrayList<MatOfPoint> arrayList )
	{
		StringBuilder ostr = new StringBuilder();
		
		ostr.append( "ArrayList<MatOfPoint> size = " ).append( arrayList.size() );
		
		double[] minMax = new double[arrayList.size()];
		int ctr = 0;
		
		
		for (MatOfPoint next : arrayList)
		{
			List<Point> current = next.toList();
			ostr.append( show( current ));
			minMax[ctr++] = getAverageX( current );	
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
	
	public static double getCenterX( ArrayList<MatOfPoint> arrayList ) {
		if ( arrayList.size() != 2 ) {
			DriverStation.reportWarning( "Target not in sight.", false );
			return -1.0;
		}
		
		double[] minMax = new double[arrayList.size()];
		int ctr = 0;
		
		
		for (MatOfPoint next : arrayList)
		{
			List<Point> current = next.toList();
			minMax[ctr++] = getAverageX( current );	
		}
		
		return ( minMax[0] + minMax[1] ) / 2.0;
	}
	
	public static double getAverageX( List<Point> pList ) {
		double adds = 0;
		for (Point p : pList) {
			adds += p.x;
		}
		return adds / pList.size();
	}
	
	public static double getAverageY( List<Point> pList ) {
		double adds = 0;
		for (Point p : pList) {
			adds += p.y;
		}
		return adds / pList.size();
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
