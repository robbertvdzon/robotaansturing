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
import io.javalin.Javalin;

import java.math.BigDecimal;

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
        RobotAansturing robotAansturing = new RobotAansturingImpl(false);

        app = Javalin.create();
        app.enableStaticFiles("/html");
        new RestEndpoints().initRestEndpoints(app, robotAansturing);
        app.start(8080);

    }


    public static void mainOud(String args[]) throws Exception {
        System.out.println("started.");
//        RobotAansturingImpl

        I2CBus bus = I2CFactory.getInstance(I2CBus.BUS_1);
        final PCA9685GpioProvider provider = new PCA9685GpioProvider(bus, 0x40, BigDecimal.valueOf(50), BigDecimal.ONE);

        // Define outputs in use for this example
        GpioPinPwmOutput[] myOutputs = provisionPwmOutputs(provider);
        // Reset outputs
        provider.reset();
        //


        setPos(provider, midden);


        for (int i = midden; i < rechts; i += stap) {
            setPos(provider, i);
        }
        for (int i = rechts; i > links; i -= stap) {
            setPos(provider, i);
        }
        for (int i = links; i < rechts; i += stap) {
            setPos(provider, i);
        }
        for (int i = rechts; i > links; i -= stap) {
            setPos(provider, i);
        }
        for (int i = links; i < midden; i += stap) {
            setPos(provider, i);
        }


    }

    private static void setPos(PCA9685GpioProvider provider, int i) {
        long start = System.currentTimeMillis();
        provider.setPwm(PCA9685Pin.ALL[0], i);
        provider.setPwm(PCA9685Pin.ALL[1], i);
        provider.setPwm(PCA9685Pin.ALL[2], i);
        provider.setPwm(PCA9685Pin.ALL[3], i);
        provider.setPwm(PCA9685Pin.ALL[4], i);
        long end = System.currentTimeMillis();
        long diff = (end - start) / 5;
        System.out.println(diff);
        sleep(delay);
    }

    private static void sleep(int i) {
        try {
            Thread.sleep(i);
        } catch (InterruptedException e) {
            e.printStackTrace();
        }
    }

    private static GpioPinPwmOutput[] provisionPwmOutputs(final PCA9685GpioProvider gpioProvider) {
        GpioController gpio = GpioFactory.getInstance();
        GpioPinPwmOutput myOutputs[] = {
                gpio.provisionPwmOutputPin(gpioProvider, PCA9685Pin.PWM_00, "Pulse 00"),
                gpio.provisionPwmOutputPin(gpioProvider, PCA9685Pin.PWM_01, "Pulse 01"),
                gpio.provisionPwmOutputPin(gpioProvider, PCA9685Pin.PWM_02, "Pulse 02"),
                gpio.provisionPwmOutputPin(gpioProvider, PCA9685Pin.PWM_03, "Pulse 03"),
                gpio.provisionPwmOutputPin(gpioProvider, PCA9685Pin.PWM_04, "Pulse 04"),
                gpio.provisionPwmOutputPin(gpioProvider, PCA9685Pin.PWM_05, "Pulse 05"),
                gpio.provisionPwmOutputPin(gpioProvider, PCA9685Pin.PWM_06, "Pulse 06"),
                gpio.provisionPwmOutputPin(gpioProvider, PCA9685Pin.PWM_07, "Pulse 07"),
                gpio.provisionPwmOutputPin(gpioProvider, PCA9685Pin.PWM_08, "Pulse 08"),
                gpio.provisionPwmOutputPin(gpioProvider, PCA9685Pin.PWM_09, "Pulse 09"),
                gpio.provisionPwmOutputPin(gpioProvider, PCA9685Pin.PWM_10, "Always ON"),
                gpio.provisionPwmOutputPin(gpioProvider, PCA9685Pin.PWM_11, "Always OFF"),
                gpio.provisionPwmOutputPin(gpioProvider, PCA9685Pin.PWM_12, "Servo pulse MIN"),
                gpio.provisionPwmOutputPin(gpioProvider, PCA9685Pin.PWM_13, "Servo pulse NEUTRAL"),
                gpio.provisionPwmOutputPin(gpioProvider, PCA9685Pin.PWM_14, "Servo pulse MAX"),
                gpio.provisionPwmOutputPin(gpioProvider, PCA9685Pin.PWM_15, "not used")};
        return myOutputs;
    }
}
