package com.vdzon.robot;

import com.pi4j.gpio.extension.pca.PCA9685GpioProvider;
import com.pi4j.gpio.extension.pca.PCA9685Pin;
import com.pi4j.io.gpio.GpioController;
import com.pi4j.io.gpio.GpioFactory;
import com.pi4j.io.gpio.GpioPinPwmOutput;
import com.pi4j.io.i2c.I2CBus;
import com.pi4j.io.i2c.I2CFactory;
import com.vdzon.MoveRequest;
import lombok.extern.slf4j.Slf4j;

import java.io.IOException;
import java.math.BigDecimal;
import java.util.stream.Stream;


@Slf4j
public class RobotAansturingImpl implements RobotAansturing, Runnable{
    public static final int STIL = 1530;
    public static final int LANGZAAM_LINKS = 1624;
    public static final int SNEL_LINKS = 1800;
    public static final int LANGZAAM_RECHTS = 1485;
    public static final int SNEL_RECHTS = 1400;
    private PCA9685GpioProvider provider;
    private final RobotUitlezing robotUitlezing;

    double[] requestedPos = {-1,-1,-1,-1};


    public RobotAansturingImpl(RobotUitlezing robotUitlezing) {
        this.robotUitlezing = robotUitlezing;
        setup();
        new Thread(this).start();
    }

    @Override
    public double getPos(int arm) {
        return robotUitlezing.getArmPos(arm);
    }

    @Override
    public void run() {

        int currentAansturing = -1;
        while (true){
            int arm = 3;
            double pos = getRequestedPos(arm);
            if (pos!=-1) {
                double currentPos = robotUitlezing.getArmPos(arm);
                double verschil = pos - currentPos;
                int aansturing = berekenAansturing(verschil);
                if (currentAansturing != aansturing) {
                    log.info("Curr:{}  Requested:{} Sturing:{}", currentPos, pos, aansturing);
                    provider.setPwm(PCA9685Pin.ALL[0], aansturing);
                    currentAansturing = aansturing;
                }
            }
            sleep();
        }

    }

    private double getRequestedPos(int arm) {
        synchronized (requestedPos) {
            return requestedPos[arm];
        }
    }

    private int berekenAansturing(double verschil) {
        if (verschil > 0) {
            if (verschil < 0.01) {
                return STIL;
            } else if (verschil < 0.2) {
                return LANGZAAM_LINKS;
            } else {
                return SNEL_LINKS;
            }
        }
        else if (verschil < 0) {
            if (Math.abs(verschil) < 0.01) {
                return STIL;
            } else if (Math.abs(verschil) < 0.2) {
                return LANGZAAM_RECHTS;
            } else {
                return SNEL_RECHTS;
            }
        }
        else {
            return STIL;
        }
    }

    private void setup() {
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
    public void moveTo(double pos, int arm) {
        synchronized (requestedPos){
            requestedPos[arm] = pos;
        }
    }

    @Override
    public void move(MoveRequest moveRequest) {
        System.out.println("Move to "+moveRequest);
    }

    private void sleep() {
        try {
            Thread.sleep(20);
        } catch (InterruptedException e) {
            e.printStackTrace();
        }
    }

//    private void setPos(PCA9685GpioProvider provider, int m1, int m2, int m3, int m4, int m5) {
//        if (!simulation) {
//            provider.setPwm(PCA9685Pin.ALL[0], m1);
//            provider.setPwm(PCA9685Pin.ALL[1], m2);
//            provider.setPwm(PCA9685Pin.ALL[2], m3);
//            provider.setPwm(PCA9685Pin.ALL[3], m4);
//            provider.setPwm(PCA9685Pin.ALL[4], m5);
//        }
//    }


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
