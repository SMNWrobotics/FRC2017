package org.frc1982.common.vision;

import java.util.concurrent.atomic.AtomicInteger;

import edu.wpi.cscore.CvSource;
import edu.wpi.cscore.UsbCamera;
import edu.wpi.first.wpilibj.CameraServer;
import edu.wpi.first.wpilibj.vision.VisionThread;

public class CameraView {
	private static final ImageResolution iRes = ImageResolution.MEDIUM;

	private AtomicInteger ctr = new AtomicInteger();

	public CameraView() {
	}

	public VisionThread getVisionThread() {
		// Use this if you want an image in addition to the processed image
		UsbCamera camera = CameraServer.getInstance().startAutomaticCapture();

		// Use this if you only want to see processed images on the dashboard
		// UsbCamera camera = new UsbCamera("USB Camera 0", 0);

		camera.setResolution(iRes.getWidth(), iRes.getHeight());

		// Set the brightness, as a percentage (0-100).
		camera.setBrightness(0);

		// Set the exposure to manual, as a percentage (0-100).
		// camera.setExposureManual(50);
		//
		// Set the white balance to manual, with specified color temperature.
		// camera.setWhiteBalanceManual(50);

		CvSource outputStream = CameraServer.getInstance().putVideo("Blur", iRes.getWidth(), iRes.getHeight());

		GripPipeline gp = new GripPipeline();

		return new VisionThread(camera, gp, pipeline -> {
			if (0 == ctr.incrementAndGet() % 50) {
				// System.out.println( "Current frame... (" + ctr.get() + ")" );
				// Utils.show( gp.filterContoursOutput() );
				// double[] areas = table.getNumberArray("area", defaultValue);
				System.out.print("areas: ");
				// for (double area : areas) {
				// System.out.print(area + " \n");
				// }
				System.out.println("");

				System.out.println("Current frame... (" + ctr.get() + ")");
				Utils.show(gp.filterContoursOutput());

			}

			outputStream.putFrame(gp.hslThreshold1Output());
			// outputStream.putFrame( gp.maskOutput() );
			// outputStream.putFrame( gp.rgbThresholdOutput() );

		});
	}
}
