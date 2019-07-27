package com.vdzon.robot;

import com.pi4j.gpio.extension.pca.PCA9685GpioProvider;
import com.pi4j.gpio.extension.pca.PCA9685Pin;
import com.pi4j.io.gpio.GpioController;
import com.pi4j.io.gpio.GpioFactory;
import com.pi4j.io.gpio.GpioPinPwmOutput;
import com.pi4j.io.i2c.I2CBus;
import com.pi4j.io.i2c.I2CFactory;
import com.vdzon.MoveRequest;

import java.io.IOException;
import java.math.BigDecimal;
import java.util.stream.Stream;


public class RobotAansturingImpl implements RobotAansturing{
    private PCA9685GpioProvider provider;
    private final boolean simulation;

    private int lastM1 = -1;
    private int lastM2 = -1;
    private int lastM3 = -1;
    private int lastM4 = -1;
    private int lastM5 = -1;

    public RobotAansturingImpl(boolean simulation) {
        this.simulation = simulation;
        if (!simulation) {
            I2CBus bus = null;
            try {
                bus = I2CFactory.getInstance(I2CBus.BUS_1);
                provider = new PCA9685GpioProvider(bus, 0x40, BigDecimal.valueOf(50), BigDecimal.ONE);

                // Define outputs in use for this example
                GpioPinPwmOutput[] myOutputs = provisionPwmOutputs(provider);

                // Show PWM values for outputs 0..14
                for (GpioPinPwmOutput output : myOutputs) {
                    int[] onOffValues = provider.getPwmOnOffValues(output.getPin());
                    System.out.println(output.getPin().getName() + " (" + output.getName() + "): ON value [" + onOffValues[0] + "], OFF value [" + onOffValues[1] + "]");
                }

                // Reset outputs
                provider.reset();

            } catch (I2CFactory.UnsupportedBusNumberException e) {
                e.printStackTrace();
            } catch (IOException e) {
                e.printStackTrace();
            }
        }
    }

    @Override
    public void move(MoveRequest moveRequest) {
        System.out.println("Move to "+moveRequest);

        long startTime = System.currentTimeMillis();
        long endTime = startTime + moveRequest.getMsec();
        int posDiffM1 = 0;
        int posDiffM2 = 0;
        int posDiffM3 = 0;
        int posDiffM4 = 0;
        int posDiffM5 = 0;
        boolean initialized = lastM1 != -1;

        if (!initialized){
            lastM1 = moveRequest.getM1();
            lastM2 = moveRequest.getM2();
            lastM3 = moveRequest.getM3();
            lastM4 = moveRequest.getM4();
            lastM5 = moveRequest.getM5();
        }

        posDiffM1 = moveRequest.getM1() - lastM1;
        posDiffM2 = moveRequest.getM2() - lastM2;
        posDiffM3 = moveRequest.getM3() - lastM3;
        posDiffM4 = moveRequest.getM4() - lastM4;
        posDiffM5 = moveRequest.getM5() - lastM5;

        while (System.currentTimeMillis()<endTime){
            double percentage =  (double)(System.currentTimeMillis() - startTime) / moveRequest.getMsec();
            int m1 = lastM1 + (int)(percentage*posDiffM1);
            int m2 = lastM2 + (int)(percentage*posDiffM2);
            int m3 = lastM3 + (int)(percentage*posDiffM3);
            int m4 = lastM4 + (int)(percentage*posDiffM4);
            int m5 = lastM5 + (int)(percentage*posDiffM5);

            setPos(provider, m1, m2, m3, m4, m5);

            if (simulation) {
                sleep();
            }
        }

        lastM1 = moveRequest.getM1();
        lastM2 = moveRequest.getM2();
        lastM3 = moveRequest.getM3();
        lastM4 = moveRequest.getM4();
        lastM5 = moveRequest.getM5();

    }

    private void sleep() {
        try {
            Thread.sleep(20);
        } catch (InterruptedException e) {
            e.printStackTrace();
        }
    }

    private void setPos(PCA9685GpioProvider provider, int m1, int m2, int m3, int m4, int m5) {
        System.out.println(""+m1+" : "+m2+" : "+m3+" : "+m4+" : "+m5);
        if (!simulation) {
            provider.setPwm(PCA9685Pin.ALL[0], m1);
            provider.setPwm(PCA9685Pin.ALL[1], m2);
            provider.setPwm(PCA9685Pin.ALL[2], m3);
            provider.setPwm(PCA9685Pin.ALL[3], m4);
            provider.setPwm(PCA9685Pin.ALL[4], m5);
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
