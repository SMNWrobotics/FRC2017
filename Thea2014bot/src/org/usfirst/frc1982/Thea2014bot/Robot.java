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

import org.opencv.core.Mat;
import org.usfirst.frc1982.Thea2014bot.commands.AutonomousCommand;
import org.usfirst.frc1982.Thea2014bot.subsystems.Drive;
import org.usfirst.frc1982.Thea2014bot.subsystems.lift;

import edu.wpi.cscore.CvSink;
import edu.wpi.cscore.CvSource;
import edu.wpi.cscore.UsbCamera;
import edu.wpi.first.wpilibj.CameraServer;
import edu.wpi.first.wpilibj.IterativeRobot;
import edu.wpi.first.wpilibj.command.Command;
import edu.wpi.first.wpilibj.command.Scheduler;
import edu.wpi.first.wpilibj.livewindow.LiveWindow;
import edu.wpi.first.wpilibj.vision.VisionThread;

/**
 * The VM is configured to automatically run this class, and to call the
 * functions corresponding to each mode, as described in the IterativeRobot
 * documentation. If you change the name of this class or the package after
 * creating this project, you must also update the manifest file in the resource
 * directory.
 */
public class Robot extends IterativeRobot {
	private static final int IMG_WIDTH = 320;
	private static final int IMG_HEIGHT = 240;
	
	private VisionThread visionThread;
	private double centerX = 0.0;
	
    Command autonomousCommand;
    GripPipeline gripPipeline;

    
    
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
        
//        new Thread( () -> {
//        	gripPipeline = new GripPipeline();
//        	
//            UsbCamera camera = CameraServer.getInstance().startAutomaticCapture();
//            camera.setResolution(640, 480);
//            
//            CvSink cvSink = CameraServer.getInstance().getVideo();
////            CvSource outputStream = CameraServer.getInstance().putVideo("Blur", 640, 480);
//            CvSource outputStream = CameraServer.getInstance().putVideo("Blur", 320, 240);
//            
//            Mat source = new Mat();
//            cvSink.grabFrame(source);
//            gripPipeline.process(source);
//            Mat output = new Mat(); //gripPipeline.maskOutput();
//            
//            while(true) {
//                cvSink.grabFrame(source);
//                
////                Imgproc.cvtColor(source, output, Imgproc.COLOR_BGR2GRAY);
////                gripPipeline.process(source);
//                
//                
//                outputStream.putFrame(output);
//            }
//        }).start();
        
        UsbCamera camera = CameraServer.getInstance().startAutomaticCapture();
        camera.setResolution( IMG_WIDTH, IMG_HEIGHT );
        
//        CvSink cvSink = CameraServer.getInstance().getVideo();
//        Mat source = new Mat();
        AtomicInteger ctr = new AtomicInteger();
        
        CvSource outputStream = CameraServer.getInstance().putVideo( "Blur", IMG_WIDTH, IMG_HEIGHT );
        GripPipeline gp = new GripPipeline();
        
        visionThread = new VisionThread( camera, gp, pipeline -> {
        	while(true) {
//        		cvSink.grabFrame(source);
//        		gripPipeline.process(source);
        		System.out.println( "Get next frame... (" + ctr.incrementAndGet() + ")" );
        		outputStream.putFrame( gp.maskOutput() );
//        		outputStream.putFrame( gp.rgbThresholdOutput() );
        	}
        });
        
        visionThread.start();

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
    }

    /**
     * This function is called periodically during operator control
     */
    public void teleopPeriodic() {
        Scheduler.getInstance().run();
    }

    /**
     * This function is called periodically during test mode
     */
    public void testPeriodic() {
        LiveWindow.run();
    }
}
