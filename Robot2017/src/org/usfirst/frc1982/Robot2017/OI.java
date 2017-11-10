/// RobotBuilder Version: 2.0
//
// This file was generated by RobotBuilder. It contains sections of
// code that are automatically generated and assigned by robotbuilder.
// These sections will be updated in the future when you export to
// Java from RobotBuilder. Do not put any code or make any change in
// the blocks indicating autogenerated code or it will be lost on an
// update. Deleting the comments indicating the section will prevent
// it from being updated in the future.


package org.usfirst.frc1982.Robot2017;

import org.usfirst.frc1982.Robot2017.commands.*;

import edu.wpi.first.wpilibj.Joystick;
import edu.wpi.first.wpilibj.buttons.JoystickButton;


/**
 * This class is the glue that binds the controls on the physical operator
 * interface to the commands and command groups that allow control of the robot.
 */
public class OI {
    //// CREATING BUTTONS
    // One type of button is a joystick button which is any button on a joystick.
    // You create one by telling it which joystick it's on and which button
    // number it is.
    // Joystick stick = new Joystick(port);
    // Button button = new JoystickButton(stick, buttonNumber);

    // There are a few additional built in buttons you can use. Additionally,
    // by subclassing Button you can create custom triggers and bind those to
    // commands the same as any other Button.

    //// TRIGGERING COMMANDS WITH BUTTONS
    // Once you have a button, it's trivial to bind it to a button in one of
    // three ways:

    // Start the command when the button is pressed and let it run the command
    // until it is finished as determined by it's isFinished method.
    // button.whenPressed(new ExampleCommand());

    // Run the command while the button is being held down and interrupt it once
    // the button is released.
    // button.whileHeld(new ExampleCommand());

    // Start the command when the button is released  and let it run the command
    // until it is finished as determined by it's isFinished method.
    // button.whenReleased(new ExampleCommand());


    // BEGIN AUTOGENERATED CODE, SOURCE=ROBOTBUILDER ID=DECLARATIONS
    public Joystick driverJoystick;
    public JoystickButton winchManual;
    public JoystickButton winchOn;
    public JoystickButton winchOff;
    public Joystick opBox;

    // END AUTOGENERATED CODE, SOURCE=ROBOTBUILDER ID=DECLARATIONS
    
    public JoystickButton AutoGearButton;
    public JoystickButton AutoOnLeft;
    public JoystickButton AutoOnRight;
    
    public JoystickButton ReverseWinch;
    
    public JoystickButton shooter;
    
    public JoystickButton CamCent;
    
    public JoystickButton intake;
    
    public OI() {
        // BEGIN AUTOGENERATED CODE, SOURCE=ROBOTBUILDER ID=CONSTRUCTORS

        opBox = new Joystick(1);
        
        winchOff = new JoystickButton(opBox, 13);
        winchOff.whenReleased(new _WinchOff());
        winchOn = new JoystickButton(opBox, 13);
        winchOn.whenPressed(new _WinchOn());
        winchManual = new JoystickButton(opBox, 11);
        winchManual.whenPressed(new _WinchManual());
        driverJoystick = new Joystick(0);
        


        // SmartDashboard Buttons

    // END AUTOGENERATED CODE, SOURCE=ROBOTBUILDER ID=CONSTRUCTORS
        AutoGearButton = new JoystickButton(opBox, 12);
        AutoOnLeft = new JoystickButton(opBox, 16);
        AutoOnRight = new JoystickButton(opBox, 14);
        
        intake = new JoystickButton(opBox, 15);
        intake.whenPressed(new _IntakeOn()); //when the switch is pressed, the intake contraption moves into the lower position
        intake.whenReleased(new _IntakeOff()); //when the switch is released the intake moves to the upper position
        
        ReverseWinch = new JoystickButton( driverJoystick, 5);
        ReverseWinch.whileHeld( new _WinchOnReverse());
    
        CamCent = new JoystickButton(driverJoystick, 1);
        CamCent.whileHeld(new _CameraCenter(Robot.cameraView));
        
    }

    // BEGIN AUTOGENERATED CODE, SOURCE=ROBOTBUILDER ID=FUNCTIONS
    public Joystick getDriverJoystick() {
        return driverJoystick;
    }

    public Joystick getOpBox() {
        return opBox;
    }


    // END AUTOGENERATED CODE, SOURCE=ROBOTBUILDER ID=FUNCTIONS
}

