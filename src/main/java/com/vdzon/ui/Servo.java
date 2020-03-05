package com.vdzon.ui;
import java.math.BigDecimal;
import java.util.Scanner;

import com.pi4j.gpio.extension.pca.PCA9685GpioProvider;
import com.pi4j.gpio.extension.pca.PCA9685Pin;
import com.pi4j.io.gpio.GpioController;
import com.pi4j.io.gpio.GpioFactory;
import com.pi4j.io.gpio.GpioPinPwmOutput;
import com.pi4j.io.gpio.Pin;
import com.pi4j.io.i2c.I2CBus;
import com.pi4j.io.i2c.I2CFactory;
import java.util.stream.IntStream;

public class Servo {

  private static final int SERVO_DURATION_MIN = 900;
  private static final int SERVO_DURATION_NEUTRAL = 1500;
  private static final int SERVO_DURATION_MAX = 2100;

  @SuppressWarnings("resource")
  public static void main(String args[]) throws Exception {
    BigDecimal frequency = new BigDecimal("48.828");
    BigDecimal frequencyCorrectionFactor = new BigDecimal("1.0578");
    I2CBus bus = I2CFactory.getInstance(I2CBus.BUS_1);
    final PCA9685GpioProvider provider = new PCA9685GpioProvider(bus, 0x40, frequency, frequencyCorrectionFactor);
    GpioPinPwmOutput[] myOutputs = provisionPwmOutputs(provider);
    provider.reset();

    IntStream.range(900,2100).forEach(duration->{
      provider.setPwm(PCA9685Pin.PWM_00, duration);
      sleep(10);
    });
    IntStream.range(2100,900).forEach(duration->{
      provider.setPwm(PCA9685Pin.PWM_00, duration);
      sleep(10);
    });
  }

  private static void sleep(long time) {
    try {
      Thread.sleep(time);
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
