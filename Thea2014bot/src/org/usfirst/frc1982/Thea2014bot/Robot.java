// RobotBuilder Version: 2.0
//
// This file was generated by RobotBuilder. It contains sections of
// code that are automatically generated and assigned by robotbuilder.
// These sections will be updated in the future when you export to
// Java from RobotBuilder. Do not put any code or make any change in
// the blocks indicating autogenerated code or it will be lost on an
// update. Deleting the comments indicating the section will prevent
// it from being updated in the future.


package org.usfirst.frc1982.Thea2014bot;

import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.atomic.AtomicInteger;

import org.frc1982.common.FieldPosition;
import org.frc1982.common.Goal;
import org.frc1982.common.TeamChoice;
import org.usfirst.frc1982.Thea2014bot.commands.AutoDoNothing;
import org.usfirst.frc1982.Thea2014bot.commands.AutonomousCommand;

import org.usfirst.frc1982.Thea2014bot.commands.AutoBaseLine;
import org.usfirst.frc1982.Thea2014bot.commands.AutoLeft;
import org.usfirst.frc1982.Thea2014bot.commands._DriveEnable;

import org.usfirst.frc1982.Thea2014bot.subsystems.Drive;
import org.usfirst.frc1982.Thea2014bot.subsystems.lift;
import org.usfirst.frc1982.Thea2014bot.RobotMap;

import edu.wpi.cscore.CvSource;
import edu.wpi.cscore.UsbCamera;
import edu.wpi.first.wpilibj.CameraServer;
import edu.wpi.first.wpilibj.IterativeRobot;
import edu.wpi.first.wpilibj.command.Command;
import edu.wpi.first.wpilibj.command.Scheduler;
import edu.wpi.first.wpilibj.livewindow.LiveWindow;

import edu.wpi.first.wpilibj.networktables.NetworkTable;
import edu.wpi.first.wpilibj.smartdashboard.SendableChooser;
import edu.wpi.first.wpilibj.smartdashboard.SmartDashboard;

import edu.wpi.first.wpilibj.vision.VisionThread;

/**
 * The VM is configured to automatically run this class, and to call the
 * functions corresponding to each mode, as described in the IterativeRobot
 * documentation. If you change the name of this class or the package after
 * creating this project, you must also update the manifest file in the resource
 * directory.
 */
public class Robot extends IterativeRobot {
	private static final ImageResolution iRes = ImageResolution.MEDIUM;
//	public static final Object LOCK = new Integer( 0 );
	
    private AtomicInteger ctr = new AtomicInteger();
	private VisionThread visionThread;
	
//	ADIS16448_IMU gyro;
	
    Command autonomousCommand;
//    GripPipelineTooMuch gripPipeline;

    List<Command> autoPrograms = new ArrayList<Command>();
    
    
    NetworkTable table;


    public static ADIS16448_IMU gyro;

    SendableChooser<TeamChoice> teamChoice;
    SendableChooser<FieldPosition> fieldPosition;
    SendableChooser<Goal> goal;
    
    public static OI oi;
    // BEGIN AUTOGENERATED CODE, SOURCE=ROBOTBUILDER ID=DECLARATIONS
    public static Drive drive;
    public static lift lift;

    // END AUTOGENERATED CODE, SOURCE=ROBOTBUILDER ID=DECLARATIONS

    /**
     * This function is run when the robot is first started up and should be
     * used for any initialization code.
     */
    public void robotInit() {
    RobotMap.init();
        // BEGIN AUTOGENERATED CODE, SOURCE=ROBOTBUILDER ID=CONSTRUCTORS
        drive = new Drive();
        lift = new lift();

    // END AUTOGENERATED CODE, SOURCE=ROBOTBUILDER ID=CONSTRUCTORS
        // OI must be constructed after subsystems. If the OI creates Commands
        //(which it very likely will), subsystems are not guaranteed to be
        // constructed yet. Thus, their requires() statements may grab null
        // pointers. Bad news. Don't move it.
        oi = new OI();
        
        // instantiate the command used for the autonomous period
        // BEGIN AUTOGENERATED CODE, SOURCE=ROBOTBUILDER ID=AUTONOMOUS

        autonomousCommand = new AutoBaseLine();

    // END AUTOGENERATED CODE, SOURCE=ROBOTBUILDER ID=AUTONOMOUS
        
         teamChoice = new SendableChooser<TeamChoice>();
         teamChoice.addObject( "Red", TeamChoice.RED );
         teamChoice.addObject( "Blue", TeamChoice.BLUE );
         SmartDashboard.putData("Team Choice", teamChoice);
         
         fieldPosition = new SendableChooser<FieldPosition>();
         fieldPosition.addObject( "One", FieldPosition.ONE );
         fieldPosition.addObject( "Two", FieldPosition.TWO );
         fieldPosition.addObject( "Three", FieldPosition.THREE );
         SmartDashboard.putData("Field Position", fieldPosition);
         
         goal = new SendableChooser<Goal>();
         goal.addObject( "Do Nothing", Goal.DO_NOTHING);
         goal.addObject("BaseLine" , Goal.BASELINE);
         SmartDashboard.putData("Goal", goal);
        
//        UsbCamera camera = CameraServer.getInstance().startAutomaticCapture(); //use this if you want an image in addition to the processed image
        UsbCamera camera = new UsbCamera("USB Camera 0", 0); //use this if you only want to see processed images on the dashboard
        camera.setResolution( iRes.getWidth(), iRes.getHeight() );

        
        // Set the brightness, as a percentage (0-100).
        camera.setBrightness(0);
        
        // Set the exposure to manual, as a percentage (0-100).
//        camera.setExposureManual(50);
        
        // Set the white balance to manual, with specified color temperature.
//        camera.setWhiteBalanceManual(50);
        
        CvSource outputStream = CameraServer.getInstance().putVideo( "Blur", iRes.getWidth(), iRes.getHeight() );
        GripPipeline gp = new GripPipeline();

        visionThread = new VisionThread( camera, gp, pipeline -> {
        		if (0 == ctr.incrementAndGet() % 50)
        		{
//        			System.out.println( "Current frame... (" + ctr.get() + ")" );
//        			Utils.show( gp.filterContoursOutput() );
//        			double[] areas = table.getNumberArray("area", defaultValue);
        			System.out.print("areas: ");
//        			for (double area : areas) {
//        				System.out.print(area + " \n");
//        			}
        			System.out.println("");

        			System.out.println( "Current frame... (" + ctr.get() + ")" );
        			Utils.show( gp.filterContoursOutput() );

        		}
        		
        		outputStream.putFrame( gp.hslThreshold1Output() );
//        		outputStream.putFrame( gp.maskOutput() );
//        		outputStream.putFrame( gp.rgbThresholdOutput() );
        		
        });
        
        visionThread.start();
        
        gyro = new ADIS16448_IMU();

        gyro.reset();
        gyro.calibrate();
    }

    /**
     * This function is called when the disabled button is hit.
     * You can use it to reset subsystems before shutting down.
     */
    public void disabledInit(){

    }

    public void disabledPeriodic() {
        Scheduler.getInstance().run();
    }

    public void autonomousInit() {
        // schedule the autonomous command (example)
    	
    	TeamChoice tc = teamChoice.getSelected();
    	FieldPosition fp = fieldPosition.getSelected();
    	Goal g = goal.getSelected();
    	
    	autonomousCommand = getAutonomousProgram(tc,fp,g);
    	System.out.println("Team Choice: " + tc + " , Field Position: " + fp);
    	
        if (autonomousCommand != null) autonomousCommand.start();
    }
    
    private Command getAutonomousProgram(TeamChoice tc, FieldPosition fp, Goal g) {
    	return new AutoDoNothing();
    }
    
    /**
     * This function is called periodically during autonomous
     */
    public void autonomousPeriodic() {
        Scheduler.getInstance().run();
    }

    public void teleopInit() {
        // This makes sure that the autonomous stops running when
        // teleop starts running. If you want the autonomous to
        // continue until interrupted by another command, remove
        // this line or comment it out.
        if (autonomousCommand != null) autonomousCommand.cancel();
        gyro.reset();

        gyroCtr = 5;
        angleRates = new ArrayList<Double>();
        angles = new ArrayList<Double>();
        angles.add(gyro.getAngleZ());

    }
    
    private int gyroCtr = 1000;
    private ArrayList<Double> angleRates;
    private ArrayList<Double> angles;
    private double driftRate;
    private int overCtr = 0;
    
    /**
     * This function is called periodically during operator control
     */
    public void teleopPeriodic() {
        Scheduler.getInstance().run();

        if (gyroCtr < 0) {
        	overCtr++;
//        	System.out.println("DriftRate: " + driftRate);
//        	System.out.println("AngleZ: " + (gyro.getAngleZ()-driftRate*overCtr) + " ,DriftRate " + driftRate);
        	System.out.println("Actual Angle Z: " + gyro.getAngleZ());
//        	System.out.println("1: " + angles.get(0) + " , 2: " + angles.get(angles.size()/2) + " , 3: " + angles.get(angles.size()-1));
//        	System.out.println("AngleY: " + gyro.getAngleY());
//       	 System.out.println("AngleZ: " + gyro.getAngleZ());
//        	System.out.println("Pitch: " + gyro.getPitch());
        	System.out.println("Yaw: " + gyro.getYaw());
//        	System.out.println("Roll: " + gyro.getRoll());
        } else if (gyroCtr == 0) {
        	gyroCtr--;
        	double adds = 0;
        	for (Double cur : angleRates) {
        		adds+=cur;
        	}
        	driftRate = adds/(angleRates.size());
        } else {
        	gyroCtr--;
        	double current = gyro.getAngleZ();
        	angleRates.add(angles.get(angles.size()-1)-current);
        	angles.add(current);
        }

        System.out.println(gyro.getAngleX());

    }

    /**
     * This function is called periodically during test mode
     */
    public void testPeriodic() {
        LiveWindow.run();
    }
}
