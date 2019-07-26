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
    private static int midden = 1500;
    private static int links = 1200;
    private static int rechts = 1800;
    private PCA9685GpioProvider provider;

    public RobotAansturingImpl() {
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

    @Override
    public void move(MoveRequest moveRequest) {
        System.out.println("Move to "+moveRequest);
        setPos(provider, moveRequest);
    }

    private static void setPos(PCA9685GpioProvider provider, MoveRequest moveRequest) {
        provider.setPwm(PCA9685Pin.ALL[0], moveRequest.getM1());
        provider.setPwm(PCA9685Pin.ALL[1], moveRequest.getM2());
        provider.setPwm(PCA9685Pin.ALL[2], moveRequest.getM3());
        provider.setPwm(PCA9685Pin.ALL[3], moveRequest.getM4());
//        provider.setPwm(PCA9685Pin.ALL[4], moveRequest.getM5());
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
