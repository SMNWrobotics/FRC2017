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

import org.usfirst.frc1982.Thea2014bot.commands.AutoBaseLine;
import org.usfirst.frc1982.Thea2014bot.commands.AutoDoNothing;
import org.usfirst.frc1982.Thea2014bot.commands.AutoLeft;
import org.usfirst.frc1982.Thea2014bot.commands.AutoMid;
import org.usfirst.frc1982.Thea2014bot.commands.AutoRight;
import org.usfirst.frc1982.Thea2014bot.commands.LiftDown;
import org.usfirst.frc1982.Thea2014bot.commands.LiftUp;
import org.usfirst.frc1982.Thea2014bot.commands._CameraOff;
import org.usfirst.frc1982.Thea2014bot.commands._DriveEnable;
import org.usfirst.frc1982.Thea2014bot.commands._LiftDown;
import org.usfirst.frc1982.Thea2014bot.commands._LiftUp;

import edu.wpi.first.wpilibj.Joystick;
import edu.wpi.first.wpilibj.buttons.JoystickButton;
import edu.wpi.first.wpilibj.smartdashboard.SmartDashboard;


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
    public JoystickButton liftUpButton;
    public JoystickButton liftDownButton;
    public Joystick favJoystickII;
    public Joystick opBox;

    // END AUTOGENERATED CODE, SOURCE=ROBOTBUILDER ID=DECLARATIONS
    public JoystickButton AutoGearButton;
    public JoystickButton AutoOnLeft;
    public JoystickButton AutoOnRight;
    
    public OI() {
        // BEGIN AUTOGENERATED CODE, SOURCE=ROBOTBUILDER ID=CONSTRUCTORS

        favJoystickII = new Joystick(0);
        
        liftDownButton = new JoystickButton(favJoystickII, 6);
        liftDownButton.whileHeld(new _LiftDown());
        liftUpButton = new JoystickButton(favJoystickII, 5);
        liftUpButton.whileHeld(new _LiftUp());
        
        
        opBox = new Joystick(1);
        
    // END AUTOGENERATED CODE, SOURCE=ROBOTBUILDER ID=CONSTRUCTORS
        AutoGearButton = new JoystickButton(opBox, 16);
        AutoOnLeft = new JoystickButton(opBox, 14);
        AutoOnRight = new JoystickButton(opBox, 13);
    }

    // BEGIN AUTOGENERATED CODE, SOURCE=ROBOTBUILDER ID=FUNCTIONS
    public Joystick getFavJoystickII() {
        return favJoystickII;
    }


    // END AUTOGENERATED CODE, SOURCE=ROBOTBUILDER ID=FUNCTIONS
}

