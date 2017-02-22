package org.usfirst.frc1982.Robot2017.commands;

import org.usfirst.frc1982.Robot2017.Robot;
import org.usfirst.frc1982.Robot2017.RobotMap;

import edu.wpi.first.wpilibj.command.CommandGroup;

public class DrivePID extends CommandGroup {
	
	double[] wheelSpeeds;
	private _PIDFrontLeft frontLeft;
	private _PIDFrontRight frontRight;
	private _PIDBackLeft backLeft;
	private _PIDBackRight backRight;
	
	private double maxSpeed;
	
	public DrivePID() {
		requires(Robot.drive);
		
		frontLeft = new _PIDFrontLeft(RobotMap.driveEncoderFrontLeft);
		frontRight = new _PIDFrontRight(RobotMap.driveEncoderFrontRight);
		backLeft = new _PIDBackLeft(RobotMap.driveEncoderBackLeft);
		backRight = new _PIDBackRight(RobotMap.driveEncoderBackRight);
		
		addParallel(frontLeft);
		addParallel(frontRight);
		addParallel(backLeft);
		addParallel(backRight);
		
		maxSpeed = 78.0;
	}
	
	@Override
	protected void execute() {
	/////translate joystick input to mecanum output between -1, and 1 for each wheel (depending on joystick X, Y, and Twist)
        double xIn = Robot.oi.driverJoystick.getX();
    	
        double yIn = Robot.oi.driverJoystick.getY();
        // Negate y for the joystick.
        yIn = -yIn;
        
        double rotation = Robot.oi.driverJoystick.getTwist()/2;
        
        //////use for field absolute driving
//        // Compenstate for gyro angle.
//        double[] rotated = rotateVector(xIn, yIn, gyroAngle);
//        xIn = rotated[0];
//        yIn = rotated[1];
        
//        /////outputs between -1 and 1 (full power forwards and backwards) based on joystick
//        double frontLeft = xIn + yIn + rotation;
//        double frontRight = -xIn + yIn - rotation;
//        double rearLeft = -xIn + yIn + rotation;
//        double rearRight = xIn + yIn - rotation;
        
        wheelSpeeds = new double[4];
        wheelSpeeds[0] = xIn + yIn + rotation; //front left
        wheelSpeeds[1] = -xIn + yIn - rotation; //front right
        wheelSpeeds[2] = -xIn + yIn + rotation; //rear left
        wheelSpeeds[3] = xIn + yIn - rotation; //rear right
        normalize(wheelSpeeds);
        
        frontLeft.setSetpoint(wheelSpeeds[0] * maxSpeed);
        frontRight.setSetpoint(wheelSpeeds[1] * maxSpeed);
        backLeft.setSetpoint(wheelSpeeds[2] * maxSpeed);
        backRight.setSetpoint(wheelSpeeds[3] * maxSpeed);
        
        System.out.println("Front Left input:" + wheelSpeeds[0] * maxSpeed);
        System.out.println("Front Right input:" + wheelSpeeds[1] * maxSpeed);
        System.out.println("Back Left input:" + wheelSpeeds[2] * maxSpeed);
        System.out.println("Back Right input:" + wheelSpeeds[3] * maxSpeed);
        
	}
	
	private void normalize(double[] wheelSpeeds) {
        double maxMagnitude = Math.abs(wheelSpeeds[0]);
        for (int i = 1; i < 4; i++) {
          double temp = Math.abs(wheelSpeeds[i]);
          if (maxMagnitude < temp) {
            maxMagnitude = temp;
          }
        }
        if (maxMagnitude > 1.0) {
          for (int i = 0; i < 4; i++) {
            wheelSpeeds[i] = wheelSpeeds[i] / maxMagnitude;
          }
        }
      }
	
}
