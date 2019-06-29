package com.vdzon;

import com.pi4j.gpio.extension.pca.PCA9685GpioProvider;
import com.pi4j.gpio.extension.pca.PCA9685Pin;
import com.pi4j.io.gpio.GpioController;
import com.pi4j.io.gpio.GpioFactory;
import com.pi4j.io.gpio.GpioPinPwmOutput;
import com.pi4j.io.gpio.Pin;
import com.pi4j.io.i2c.I2CBus;
import com.pi4j.io.i2c.I2CFactory;

import java.math.BigDecimal;
import java.util.Scanner;

public class Main {

    private static final int SERVO_DURATION_MIN = 900;
    private static final int SERVO_DURATION_NEUTRAL = 1500;
    private static final int SERVO_DURATION_MAX = 2100;

    @SuppressWarnings("resource")
    public static void main(String args[]) throws Exception {
        System.out.println("<--Pi4J--> PCA9685 PWM Example ... started.");

        I2CBus bus = I2CFactory.getInstance(I2CBus.BUS_1);
        final PCA9685GpioProvider provider = new PCA9685GpioProvider(bus, 0x40, BigDecimal.valueOf(50), BigDecimal.ONE);

        // Define outputs in use for this example
        GpioPinPwmOutput[] myOutputs = provisionPwmOutputs(provider);
        // Reset outputs
        provider.reset();
        //

        Pin pin = PCA9685Pin.ALL[0];
//        provider.setPwm(pin, 100);
        provider.setPwm(PCA9685Pin.ALL[0], 1500);
        provider.setPwm(PCA9685Pin.ALL[1], 1500);
        provider.setPwm(PCA9685Pin.ALL[2], 1500);
        provider.setPwm(PCA9685Pin.ALL[3], 1500);
        provider.setPwm(PCA9685Pin.ALL[4], 1500);


        for (int i = 1500; i<2400; i+=2){
            provider.setPwm(PCA9685Pin.ALL[0], i);
//            provider.setPwm(PCA9685Pin.ALL[1], i);
//            provider.setPwm(PCA9685Pin.ALL[2], i);
//            provider.setPwm(PCA9685Pin.ALL[3], i);
            provider.setPwm(PCA9685Pin.ALL[4], i);
//            Thread.sleep(1);
//            if (i%100==0) {
//                System.out.println(i);
//            }
        }
        for (int i = 2500; i>700; i-=2){
            provider.setPwm(PCA9685Pin.ALL[0], i);
//            provider.setPwm(PCA9685Pin.ALL[1], i);
//            provider.setPwm(PCA9685Pin.ALL[2], i);
//            provider.setPwm(PCA9685Pin.ALL[3], i);
            provider.setPwm(PCA9685Pin.ALL[4], i);
//            Thread.sleep(1);
//            if (i%100==0) {
//                System.out.println(i);
//            }
        }
        for (int i = 700; i<1500; i+=2){
            provider.setPwm(PCA9685Pin.ALL[0], i);
//            provider.setPwm(PCA9685Pin.ALL[1], i);
//            provider.setPwm(PCA9685Pin.ALL[2], i);
//            provider.setPwm(PCA9685Pin.ALL[3], i);
            provider.setPwm(PCA9685Pin.ALL[4], i);
//            Thread.sleep(2);
//            if (i%100==0) {
//                System.out.println(i);
//            }
        }



/*
        System.out.println("Press <Enter> to exit...");

        new Scanner(System.in).nextLine();
        for (int i = 10; i<400; i++){
            provider.setPwm(pin, i*10);
//            provider.setPwm(pin, i);
            Thread.sleep(20);
            System.out.println(i);

        }

        System.out.println("enter value");
        String s = "100";
        try {
            while (!s.equals("q")) {
                System.out.println("use " + s);
                provider.setPwm(pin, Integer.parseInt(s));
                s = new Scanner(System.in).nextLine();
            }
        }
        catch (Exception ex){
            ex.printStackTrace();
        }

        System.out.println("Exiting");
        */
    }

    private static int checkForOverflow(int position) {
        int result = position;
        if (position > PCA9685GpioProvider.PWM_STEPS - 1) {
            result = position - PCA9685GpioProvider.PWM_STEPS - 1;
        }
        return result;
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
