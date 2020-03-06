package com.vdzon.ui;

import com.pi4j.gpio.extension.pca.PCA9685GpioProvider;
import com.pi4j.gpio.extension.pca.PCA9685Pin;
import com.pi4j.io.gpio.GpioController;
import com.pi4j.io.gpio.GpioFactory;
import com.pi4j.io.gpio.GpioPinPwmOutput;
import com.pi4j.io.i2c.I2CBus;
import com.pi4j.io.i2c.I2CFactory;
import java.math.BigDecimal;

public class Servo {

  static final int STUUR_TIME_PER_STEP_IN_MSEC = 2;
  private static final int SERVO_DURATION_MIN = 900;
  private static final int SERVO_DURATION_NEUTRAL = 1500;
  private static final int SERVO_DURATION_MAX = 2100;
  private PCA9685GpioProvider provider = null;
  private boolean busy = false;


  public Servo() {
    try {
      BigDecimal frequency = new BigDecimal("48.828");
      BigDecimal frequencyCorrectionFactor = new BigDecimal("1.0578");
      I2CBus bus = I2CFactory.getInstance(I2CBus.BUS_1);
      provider = new PCA9685GpioProvider(bus, 0x40, frequency, frequencyCorrectionFactor);
      GpioPinPwmOutput[] myOutputs = provisionPwmOutputs(provider);
      provider.reset();
    } catch (Exception ex) {
      ex.printStackTrace();
    }
  }


  public void moveTo(int oldPos, int newPos, long time) {
    while (busy){
      sleep(100);
    }
    Thread thread = new Thread(() -> {
      busy = true;
      try {
        moveToInThread(oldPos, newPos, time);
      }
      catch (Exception ex){
        ex.printStackTrace();
      }
      busy = false;
    });
    thread.start();
  }

  public void moveToInThread(int oldPos, int newPos, long time) {
    int startPos = Math.max(oldPos, 900);
    int eindPos = Math.min(newPos, 2100);
    int step = eindPos > startPos ? 1 : -1;
    int totalSteps = Math.abs(eindPos - startPos);
    int skipSteps = 1;
    long extraDelay = 0;
    long totalTime = totalSteps * STUUR_TIME_PER_STEP_IN_MSEC;
    if (totalTime > time) {
      skipSteps = (int) Math.ceil(totalTime / time);
    }
    int realSteps = totalSteps / skipSteps;
    long totalTimeWithSkip = realSteps * STUUR_TIME_PER_STEP_IN_MSEC;
    long timeDiff = time - totalTimeWithSkip;
    extraDelay = timeDiff / realSteps;
    for (int p = startPos; p != eindPos; p += step) {
      if (p % skipSteps == 0) {
        provider.setPwm(PCA9685Pin.PWM_00, p);
        if (extraDelay > 0) {
          sleep(extraDelay);
        }
      }
    }
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

  public void home() {
    provider.setPwm(PCA9685Pin.PWM_00, 900);
  }
}
