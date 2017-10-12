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

import org.frc1982.common.Goal;
import org.frc1982.common.vision.CameraView;
import org.usfirst.frc1982.Thea2014bot.commands.AutoMid;
import org.usfirst.frc1982.Thea2014bot.commands.AutoTest;
import org.usfirst.frc1982.Thea2014bot.commands._CameraCenter;
import org.usfirst.frc1982.Thea2014bot.subsystems.Drive;
import org.usfirst.frc1982.Thea2014bot.subsystems.lift;

import edu.wpi.first.wpilibj.AnalogInput;
import edu.wpi.first.wpilibj.DriverStation;
import edu.wpi.first.wpilibj.IterativeRobot;
import edu.wpi.first.wpilibj.Joystick;
import edu.wpi.first.wpilibj.Joystick.ButtonType;
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
//	private static final ImageResolution iRes = ImageResolution.MEDIUM;
//	public static final Object LOCK = new Integer( 0 );
	
//    private AtomicInteger ctr = new AtomicInteger();
	private CameraView cameraView;
	private VisionThread visionThread;
	
    Command autonomousCommand;
//    GripPipelineTooMuch gripPipeline;

    List<Command> autoPrograms = new ArrayList<Command>();
    
    AnalogInput irSensor;
    
    NetworkTable table;


    public static ADIS16448_IMU gyro;

//    SendableChooser<AllianceChoice> teamChoice = AllianceChoice.getAllianceChoice();
//    SendableChooser<FieldPosition> fieldPosition = FieldPosition.getFieldPosition();
    SendableChooser<Goal> goal = Goal.getGoal();
    
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
        
        gyro = new ADIS16448_IMU();

        gyro.reset();
        gyro.calibrate();
        
        irSensor = RobotMap.irSensor;
        
        cameraView = new CameraView();
        visionThread = cameraView.getVisionThread();
        visionThread.start();
        
        // instantiate the command used for the autonomous period
        // BEGIN AUTOGENERATED CODE, SOURCE=ROBOTBUILDER ID=AUTONOMOUS

        autonomousCommand = new AutoTest(cameraView);

    // END AUTOGENERATED CODE, SOURCE=ROBOTBUILDER ID=AUTONOMOUS
        
        /*
         * Initialize SmartDashboard...
         */
//        SmartDashboard.putData( Scheduler.getInstance() );
        SmartDashboard.putData( Goal.TITLE, goal );
        
        
    }

    /**
     * This function is called when the disabled button is hit.
     * You can use it to reset subsystems before shutting down.
     */
    public void disabledInit(){
    	
    }
    
    public void disabledPeriodic() {
        Scheduler.getInstance().run();
        double current = ((double) irSensor.getVoltage());//) / 1000.0;
        System.out.println("IR sensor output: " + current + " volts");
    }
    
    public void autonomousInit() {
        // schedule the autonomous command.
    	autonomousCommand = getAutonomousProgram();
        if (autonomousCommand != null) autonomousCommand.start();
    }
    
    private Command getAutonomousProgram() {
    	/*
    	 *  The "Team Station" field in the Driver Station console sets the
    	 *  values for both alliance and position.
    	 */
    	DriverStation.Alliance alliance = DriverStation.getInstance().getAlliance();
    	System.out.println( "Alliance = " + alliance.name() );
    	
    	////Position on the driver station, however is not necessarily where our robot will be on the field
//    	int position = DriverStation.getInstance().getLocation();
//    	System.out.println( "Driver Station Position = " + position );
    	int poisition = 0;
    	boolean position = oi.AutoOnLeft.get();
    	
    	/*
    	 * The Goal is set from two switches on the operator box.
    	 */
    	Goal g;
    	boolean gear = oi.AutoGearButton.get();
    	if (gear) {
    		g = Goal.GEAR;
    	} else {
    		g = Goal.DO_NOTHING;
    	}
//    	Goal g = goal.getSelected();
//    	System.out.println( "Selected Goal = " + g.getLabel() );
    	
    	/*
    	 * The AutonomousPrograms class encapsulates the logic to map from
    	 * alliance, position, and goal to the desired program.
    	 */
//    	return AutonomousPrograms.mapToProgram( alliance, position, g );
    	return new _CameraCenter(cameraView);
    }

	/**
     * This function is called periodically during autonomous
     */
    public void autonomousPeriodic() {
        Scheduler.getInstance().run();
//        System.out.println("Gyro angleZ: " + gyro.getAngleZ());
    }

    public void teleopInit() {
        // This makes sure that the autonomous stops running when
        // teleop starts running. If you want the autonomous to
        // continue until interrupted by another command, remove
        // this line or comment it out.
        if (autonomousCommand != null) autonomousCommand.cancel();
        gyro.reset();

//        gyroCtr = 5;
//        angleRates = new ArrayList<Double>();
//        angles = new ArrayList<Double>();
//        angles.add(gyro.getAngleZ());

    }
    
//    private int gyroCtr = 1000;
//    private ArrayList<Double> angleRates;
//    private ArrayList<Double> angles;
//    private double driftRate;
//    private int overCtr = 0;
    
    /**
     * This function is called periodically during operator control
     */
    public void teleopPeriodic() {
        Scheduler.getInstance().run();

//        if (gyroCtr < 0) {
//        	overCtr++;
////        	System.out.println("DriftRate: " + driftRate);
////        	System.out.println("AngleZ: " + (gyro.getAngleZ()-driftRate*overCtr) + " ,DriftRate " + driftRate);
//        	System.out.println("Actual Angle Z: " + gyro.getAngleZ());
////        	System.out.println("1: " + angles.get(0) + " , 2: " + angles.get(angles.size()/2) + " , 3: " + angles.get(angles.size()-1));
////        	System.out.println("AngleY: " + gyro.getAngleY());
////       	 System.out.println("AngleZ: " + gyro.getAngleZ());
////        	System.out.println("Pitch: " + gyro.getPitch());
//        	System.out.println("Yaw: " + gyro.getYaw());
////        	System.out.println("Roll: " + gyro.getRoll());
//        } else if (gyroCtr == 0) {
//        	gyroCtr--;
//        	double adds = 0;
//        	for (Double cur : angleRates) {
//        		adds+=cur;
//        	}
//        	driftRate = adds/(angleRates.size());
//        } else {
//        	gyroCtr--;
//        	double current = gyro.getAngleZ();
//        	angleRates.add(angles.get(angles.size()-1)-current);
//        	angles.add(current);
//        }
//
//        System.out.println(gyro.getAngleX());

    }

    /**
     * This function is called periodically during test mode
     */
    public void testPeriodic() {
        LiveWindow.run();
//        RobotMap.ultrasonicSolenoid.set(true);
    }
}
