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

import java.util.concurrent.atomic.AtomicInteger;

import org.usfirst.frc1982.Thea2014bot.commands.AutonomousCommand;
import org.usfirst.frc1982.Thea2014bot.subsystems.Drive;
import org.usfirst.frc1982.Thea2014bot.subsystems.lift;

import edu.wpi.cscore.CvSource;
import edu.wpi.cscore.UsbCamera;
import edu.wpi.first.wpilibj.CameraServer;
import edu.wpi.first.wpilibj.IterativeRobot;
import edu.wpi.first.wpilibj.command.Command;
import edu.wpi.first.wpilibj.command.Scheduler;
import edu.wpi.first.wpilibj.livewindow.LiveWindow;
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
//	
//    private AtomicInteger ctr = new AtomicInteger();
//	private VisionThread visionThread;
	
	public static ADIS16448_IMU gyro;
	
    Command autonomousCommand;
//    GripPipelineTooMuch gripPipeline;

    
    
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

        autonomousCommand = new AutonomousCommand();

    // END AUTOGENERATED CODE, SOURCE=ROBOTBUILDER ID=AUTONOMOUS
        
//        UsbCamera camera = CameraServer.getInstance().startAutomaticCapture(); //use this if you want an image in addition to the processed image
//        UsbCamera camera = new UsbCamera("USB Camera 0", 0); //use this if you only want to see processed images on the dashboard
//        camera.setResolution( iRes.getWidth(), iRes.getHeight() );
//
//        CvSource outputStream = CameraServer.getInstance().putVideo( "Blur", iRes.getWidth(), iRes.getHeight() );
//        GripPipeline gp = new GripPipeline();
//
//        visionThread = new VisionThread( camera, gp, pipeline -> {
//        		if (0 == ctr.incrementAndGet() % 50)
//        		{
//        			System.out.println( "Current frame... (" + ctr.get() + ")" );
//        			Utils.show( gp.filterContoursOutput() );
//        		}
//        		
//        		outputStream.putFrame( gp.hslThreshold1Output() );
////        		outputStream.putFrame( gp.maskOutput() );
////        		outputStream.putFrame( gp.rgbThresholdOutput() );
//        		
//        });
//        
//        visionThread.start();
        
        gyro = new ADIS16448_IMU();
        gyro.calibrate();

    }

    /**
     * This function is called when the disabled button is hit.
     * You can use it to reset subsystems before shutting down.
     */
    public void disabledInit(){

    }
    
//    double oldX = 0;
//    double oldY = 0;
//    double oldZ = 0;
//    double totalXDif = 0;
//    double oldTotalDif = 0;
    
    public void disabledPeriodic() {
        Scheduler.getInstance().run();
//        System.out.println("Angle X: " + gyro.getAngleX() + ", Angle Y: " + gyro.getAngleY() + ", Angle Z: " + gyro.getAngleZ());
        SmartDashboard.putNumber("Angle X", Math.round(gyro.getAngleX()/4));
        SmartDashboard.putNumber("Angle Y", Math.round(gyro.getAngleY()/4));
        SmartDashboard.putNumber("Angle Z", Math.round(gyro.getAngleZ()/4));
        SmartDashboard.putNumber("AccelX", gyro.getAccelX());
        SmartDashboard.putNumber("AccelY", gyro.getAccelY());
        SmartDashboard.putNumber("AccelZ", gyro.getAccelZ());
        SmartDashboard.putNumber("MagX", gyro.getMagX());
        SmartDashboard.putNumber("MagY", gyro.getMagY());
        SmartDashboard.putNumber("MagZ", gyro.getMagZ());
//        double driftX, driftY, driftZ;
//        driftX = Math.round((gyro.getAngleX() - oldX)*10000);
//        driftY = Math.round((gyro.getAngleY() - oldY)*10000);
//        driftZ = Math.round((gyro.getAngleZ() - oldZ)*10000);
//        totalXDif += driftX;
//        System.out.println("Angle X drift: " + driftX + ", Total Drift: " + totalXDif); //", Angle Y drift: " + driftY + ", Angle Z drift: " + driftZ
//        oldTotalDif = totalXDif;
//        oldX = (gyro.getAngleX()+gyro.getAngleX()+gyro.getAngleX())/3;
//        oldY = (gyro.getAngleY()+gyro.getAngleY()+gyro.getAngleY())/3;
//        oldZ = (gyro.getAngleZ()+gyro.getAngleZ()+gyro.getAngleZ())/3;
    }

    public void autonomousInit() {
        // schedule the autonomous command (example)
        if (autonomousCommand != null) autonomousCommand.start();
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
        gyro.calibrate();
        gyro.reset();
    }

    /**
     * This function is called periodically during operator control
     */
    public void teleopPeriodic() {
        Scheduler.getInstance().run();
//        System.out.println("Angle X: " + gyro.getAngleX() + ", Angle Y: " + gyro.getAngleY() + ", Angle Z: " + gyro.getAngleZ());
        SmartDashboard.putNumber("Angle X", Math.round(gyro.getAngleX()/4));
        SmartDashboard.putNumber("Angle Y", Math.round(gyro.getAngleY()/4));
        SmartDashboard.putNumber("Angle Z", Math.round(gyro.getAngleZ()/4));
        SmartDashboard.putNumber("AccelX", gyro.getAccelX());
        SmartDashboard.putNumber("AccelY", gyro.getAccelY());
        SmartDashboard.putNumber("AccelZ", gyro.getAccelZ());
        SmartDashboard.putNumber("MagX", gyro.getMagX());
        SmartDashboard.putNumber("MagY", gyro.getMagY());
        SmartDashboard.putNumber("MagZ", gyro.getMagZ());
        System.out.println("Accel X: " + Math.round(gyro.getAccelX()*100) + ", Accel Y: " + Math.round(gyro.getAccelY()*100) + ", Accel Z: " + Math.round(gyro.getAccelZ()*100));
    }

    /**
     * This function is called periodically during test mode
     */
    public void testPeriodic() {
        LiveWindow.run();
    }
}
