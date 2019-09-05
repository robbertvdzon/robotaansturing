package com.vdzon.robot;

import com.pi4j.gpio.extension.ads.ADS1115GpioProvider;
import com.pi4j.gpio.extension.ads.ADS1115Pin;
import com.pi4j.gpio.extension.ads.ADS1x15GpioProvider;
import com.pi4j.gpio.extension.pca.PCA9685GpioProvider;
import com.pi4j.gpio.extension.pca.PCA9685Pin;
import com.pi4j.io.gpio.GpioController;
import com.pi4j.io.gpio.GpioFactory;
import com.pi4j.io.gpio.GpioPinAnalogInput;
import com.pi4j.io.gpio.GpioPinPwmOutput;
import com.pi4j.io.gpio.event.GpioPinAnalogValueChangeEvent;
import com.pi4j.io.gpio.event.GpioPinListenerAnalog;
import com.pi4j.io.i2c.I2CBus;
import com.pi4j.io.i2c.I2CFactory;
import com.vdzon.MoveRequest;

import java.io.IOException;
import java.math.BigDecimal;
import java.text.DecimalFormat;


public class RobotUitlezingImpl implements RobotUitlezing{
    private PCA9685GpioProvider provider;
    private final boolean simulation;


    public RobotUitlezingImpl(boolean simulation) {
        this.simulation = simulation;
        if (!simulation) {
            try {
                runTest();
            } catch (InterruptedException e) {
                e.printStackTrace();
            } catch (I2CFactory.UnsupportedBusNumberException e) {
                e.printStackTrace();
            } catch (IOException e) {
                e.printStackTrace();
            }
        }
    }

    public void runTest() throws InterruptedException, I2CFactory.UnsupportedBusNumberException, IOException {

        System.out.println("<--Pi4J--> ADS1115 GPIO Example ... started.");

        // number formatters
        final DecimalFormat df = new DecimalFormat("#.##");
        final DecimalFormat pdf = new DecimalFormat("###.#");

        // create gpio controller
        final GpioController gpio = GpioFactory.getInstance();

        // create custom ADS1115 GPIO provider
        final ADS1115GpioProvider gpioProvider = new ADS1115GpioProvider(I2CBus.BUS_1, ADS1115GpioProvider.ADS1115_ADDRESS_0x48);

        // provision gpio analog input pins from ADS1115
        GpioPinAnalogInput myInputs[] = {
                gpio.provisionAnalogInputPin(gpioProvider, ADS1115Pin.INPUT_A0, "arm0"),
                gpio.provisionAnalogInputPin(gpioProvider, ADS1115Pin.INPUT_A1, "arm1"),
                gpio.provisionAnalogInputPin(gpioProvider, ADS1115Pin.INPUT_A2, "arm2"),
                gpio.provisionAnalogInputPin(gpioProvider, ADS1115Pin.INPUT_A3, "arm3"),
        };

        // ATTENTION !!
        // It is important to set the PGA (Programmable Gain Amplifier) for all analog input pins.
        // (You can optionally set each input to a different value)
        // You measured input voltage should never exceed this value!
        //
        // In my testing, I am using a Sharp IR Distance Sensor (GP2Y0A21YK0F) whose voltage never exceeds 3.3 VDC
        // (http://www.adafruit.com/products/164)
        //
        // PGA value PGA_4_096V is a 1:1 scaled input,
        // so the output values are in direct proportion to the detected voltage on the input pins
        gpioProvider.setProgrammableGainAmplifier(ADS1x15GpioProvider.ProgrammableGainAmplifierValue.PGA_4_096V, ADS1115Pin.ALL);


        // Define a threshold value for each pin for analog value change events to be raised.
        // It is important to set this threshold high enough so that you don't overwhelm your program with change events for insignificant changes
        gpioProvider.setEventThreshold(50, ADS1115Pin.ALL);


        // Define the monitoring thread refresh interval (in milliseconds).
        // This governs the rate at which the monitoring thread will read input values from the ADC chip
        // (a value less than 50 ms is not permitted)
        gpioProvider.setMonitorInterval(50);


        // create analog pin value change listener
        GpioPinListenerAnalog listener = new GpioPinListenerAnalog()
        {
            @Override
            public void handleGpioPinAnalogValueChangeEvent(GpioPinAnalogValueChangeEvent event)
            {
                // RAW value
                double value = event.getValue();

                // percentage
                double percent =  ((value * 100) / ADS1115GpioProvider.ADS1115_RANGE_MAX_VALUE);

                // approximate voltage ( *scaled based on PGA setting )
                double voltage = gpioProvider.getProgrammableGainAmplifier(event.getPin()).getVoltage() * (percent/100);

                // display output
                String armName = event.getPin().getName();
                System.out.println(" (" + armName +") : VOLTS=" + df.format(voltage) + "  | PERCENT=" + pdf.format(percent) + "% | RAW=" + value + "       ");
                if (armName.equals("arm0")){
                    armPos[0] = voltage;
                }
                if (armName.equals("arm1")){
                    armPos[1] = voltage;
                }
                if (armName.equals("arm2")){
                    armPos[2] = voltage;
                }
                if (armName.equals("arm3")){
                    armPos[3] = voltage;
                }
            }
        };

        myInputs[0].addListener(listener);
        myInputs[1].addListener(listener);
        myInputs[2].addListener(listener);
        myInputs[3].addListener(listener);

        // keep program running for 10 minutes
//        Thread.sleep(600000);

        // stop all GPIO activity/threads by shutting down the GPIO controller
        // (this method will forcefully shutdown all GPIO monitoring threads and scheduled tasks)
//        gpio.shutdown();

//        System.out.println("Exiting ADS1115GpioExample");
    }

    private double[] armPos = new double[4];

    @Override
    public double getArmPos(int arm) {
        return armPos[arm];

    }
}
