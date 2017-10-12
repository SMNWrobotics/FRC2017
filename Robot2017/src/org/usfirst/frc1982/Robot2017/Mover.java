package org.usfirst.frc1982.Robot2017;

import edu.wpi.first.wpilibj.Encoder;
import edu.wpi.first.wpilibj.SpeedController;
import edu.wpi.first.wpilibj.smartdashboard.SmartDashboard;

public class Mover {
	//class to control the motors with more control than RobotDrive class (allows output values to be multiplied by a constant)
	private double multFL = 0.975;
	private double multFR = 0.975;
	private double multBL = 1.125;
	private double multBR = 0.72;
	
	private double multFLB = 1.1;
	private double multFRB = 1.0;
	private double multBLB = 1.1;
	private double multBRB = 0.5;
	
	private final SpeedController frontLeft;// = RobotMap.driveFrontLeft;
    private final SpeedController frontRight;// = RobotMap.driveFrontRight;
    private final SpeedController backLeft;// = RobotMap.driveBackLeft;
    private final SpeedController backRight;// = RobotMap.driveBackRight;
    
    private final Encoder encoderFrontLeft;// = RobotMap.driveEncoderFrontLeft;
    private final Encoder encoderFrontRight;// = RobotMap.driveEncoderFrontRight;
    private final Encoder encoderBackLeft;// = RobotMap.driveEncoderBackLeft;
    private final Encoder encoderBackRight;
	
    private double deadZone;
	
	public Mover(Encoder FL
			, Encoder FR
			, Encoder BL
			, Encoder BR
			, SpeedController fL
			, SpeedController fR
			, SpeedController bL
			, SpeedController bR) {
		
		frontLeft = fL;
		frontRight = fR;
		backLeft = bL;
		backRight = bR;
		encoderFrontLeft = FL;
		encoderFrontRight = FR;
		encoderBackLeft = BL;
		encoderBackRight = BR;
		
		SmartDashboard.putNumber("Multiplier for Front Left: ", multFL);
    	SmartDashboard.putNumber("Multiplier for Front Right: ", multFR);
    	SmartDashboard.putNumber("Multiplier for Back Left: ", multBL);
    	SmartDashboard.putNumber("Multiplier for Back Right: ", multBR);
    	
    	SmartDashboard.putNumber("Multiplier for Front Left Back: ", multFLB);
    	SmartDashboard.putNumber("Multiplier for Front Right Back: ", multFRB);
    	SmartDashboard.putNumber("Multiplier for Back Left Back: ", multBLB);
    	SmartDashboard.putNumber("Multiplier for Back Right Back: ", multBRB);
    	
    	deadZone = 0.05;
	}
	
	public void setMotorsBasedOnJoystick() {
		double sideMovement = -Robot.oi.driverJoystick.getX();
		double forwardMovement = Robot.oi.driverJoystick.getY();
		double rotation = Robot.oi.driverJoystick.getTwist()/2; // divided by 2 for less sensitivity
		//creates deadzone of .05 for the joystick (hopefully solves "clicking" problem in the motors while still)
		if (Math.abs(sideMovement) < deadZone) {
			sideMovement = 0;
		}
		if (Math.abs(forwardMovement) < deadZone) {
			forwardMovement = 0;
		}
		if (Math.abs(rotation) < deadZone) {
			rotation = 0;
		}
		//runs the mecanum code to set outputs to the wheels
		setMotorsMecanum(sideMovement, forwardMovement, rotation);
	}
	
	
	
	public void setMotorsMecanum(double xIn, double yIn, double rotation) {
		//get values for the constants (this allows these values to be changed while the code is running)
		multFL = SmartDashboard.getNumber("Multiplier for Front Left: ", multFL);
    	multFR = SmartDashboard.getNumber("Multiplier for Front Right: ", multFR);
    	multBL = SmartDashboard.getNumber("Multiplier for Back Left: ", multBL);
    	multBR = SmartDashboard.getNumber("Multiplier for Back Right: ", multBR);
    	
    	multFLB = SmartDashboard.getNumber("Multiplier for Front Left Back: ", multFLB);
    	multFRB = SmartDashboard.getNumber("Multiplier for Front Right Back: ", multFRB);
    	multBLB = SmartDashboard.getNumber("Multiplier for Back Left Back: ", multBLB);
    	multBRB = SmartDashboard.getNumber("Multiplier for Back Right Back: ", multBRB);
		
		
		
		
        double[] wheelSpeeds = new double[4];
        wheelSpeeds[0] = (xIn + yIn + rotation);// * multFL; //front left motor
        wheelSpeeds[1] = (-xIn + yIn - rotation);// * multFR; //front right motor
        wheelSpeeds[2] = (-xIn + yIn + rotation);// * multBL; //rear left motor
        wheelSpeeds[3] = (xIn + yIn - rotation);// * multBR; //rear right motor
        normalize(wheelSpeeds);
    	
        //determine if each wheel is moving forward or backward and
        //set the motor output to the output value calculated above times the conversion for either forward or backward
        if (wheelSpeeds[0] > 0) frontLeft.set(wheelSpeeds[0] * multFL);
        else frontLeft.set(wheelSpeeds[0] * multFLB);
        
        if (wheelSpeeds[1] > 0) frontRight.set(wheelSpeeds[1] * multFR);
        else frontRight.set(wheelSpeeds[1] * multFRB);
        
        if (wheelSpeeds[2] > 0) backLeft.set(wheelSpeeds[2] * multBL);
        else backLeft.set(wheelSpeeds[2] * multBLB);
        
        if (wheelSpeeds[3] > 0) backRight.set(wheelSpeeds[3] * multBR);
        else backRight.set(wheelSpeeds[3] * multBRB);
	}
	
	//function from RobotDrive class that makes sure the output values are all less than or equal to 1.0
	private void normalize(double[] wheelSpeeds) {
		//iterate through the input and find the maximum output value
        double maxMagnitude = Math.abs(wheelSpeeds[0]);
        for (int i = 1; i < 4; i++) {
          double temp = Math.abs(wheelSpeeds[i]);
          if (maxMagnitude < temp) {
            maxMagnitude = temp;
          }
        }
        //check if any of the outputs are greater than 1 and, if so, scale them all back using the maximum output value
        if (maxMagnitude > 1.0) {
          for (int i = 0; i < 4; i++) {
            wheelSpeeds[i] = wheelSpeeds[i] / maxMagnitude;
          }
        }
      }
	
	
}
