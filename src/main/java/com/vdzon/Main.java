package com.vdzon;

import com.pi4j.gpio.extension.pca.PCA9685GpioProvider;
import com.pi4j.gpio.extension.pca.PCA9685Pin;
import com.pi4j.io.gpio.GpioController;
import com.pi4j.io.gpio.GpioFactory;
import com.pi4j.io.gpio.GpioPinPwmOutput;
import com.pi4j.io.i2c.I2CBus;
import com.pi4j.io.i2c.I2CFactory;
import com.vdzon.robot.RobotAansturing;
import com.vdzon.robot.RobotAansturingImpl;
import com.vdzon.robot.RobotUitlezing;
import com.vdzon.robot.RobotUitlezingImpl;
import io.javalin.Javalin;
import lombok.extern.slf4j.Slf4j;

import java.math.BigDecimal;

@Slf4j
public class Main {


    private static int midden = 1500;
    private static int links = 1200;
    private static int rechts = 1800;
    private static int stap = 6;
    private static int delay = 0;
    Javalin app;

    public static void main(String args[]) throws Exception {
        new Main().start();
    }

    public void start() throws Exception {
        System.out.println("started.");
        RobotUitlezing robotUitlezing = new RobotUitlezingImpl(false);
        RobotAansturing robotAansturing = new RobotAansturingImpl(robotUitlezing);

        app = Javalin.create();
        app.enableStaticFiles("/html");
        new RestEndpoints().initRestEndpoints(app, robotAansturing);
        app.start(8080);

        while (true){
            double armPos0 = robotUitlezing.getArmPos(0);
            double armPos1 = robotUitlezing.getArmPos(1);
            double armPos2 = robotUitlezing.getArmPos(2);
            double armPos3 = robotUitlezing.getArmPos(3);
            log.info(String.format("Pos1: %.3f  Pos2: %.3f  Pos3: %.3f  Pos4: %.3f  ",armPos0, armPos1, armPos2, armPos3));
//            sleep(3000);
        }

    }

    private void sleep(long delay) {
        try {
            Thread.sleep(delay);
        } catch (InterruptedException e) {
            e.printStackTrace();
        }
    }

}
