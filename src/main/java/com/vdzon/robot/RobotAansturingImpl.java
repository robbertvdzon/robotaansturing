package com.vdzon.robot;

import com.pi4j.io.i2c.I2CBus;
import com.pi4j.io.i2c.I2CDevice;
import com.pi4j.io.i2c.I2CFactory;
import com.pi4j.io.i2c.I2CFactory.UnsupportedBusNumberException;
import java.io.IOException;
import lombok.extern.slf4j.Slf4j;


@Slf4j
public class RobotAansturingImpl implements RobotAansturing {
  private static int ARM1 = 0x8;//was 5
  private static int ARM2 = 0x6;// was 7
  private static int ARM3 = 0x5;// was 8
  int lastPos1 = 0;
  int lastPos2 = 0;
  int lastPos3 = 0;

  String formattedDelayFactor1 = "0050";
  String formattedDelayFactor2 = "0050";

  private I2CDevice arm1 = null;
  private I2CDevice arm2 = null;
  private I2CDevice arm3 = null;
  private Thread currentLoopThread = null;

  public RobotAansturingImpl(){
    try {
      init();
    }
    catch (Exception e){
      e.printStackTrace();
    }
  }


  public void init() {
    if (arm1 != null) { return; }
    try {
      I2CBus i2c = I2CFactory.getInstance(I2CBus.BUS_1);
      arm1 = i2c.getDevice(ARM1);
      arm2 = i2c.getDevice(ARM2);
      arm3 = i2c.getDevice(ARM3);
    } catch (UnsupportedBusNumberException e) {
      System.out.println("ERROR, UnsupportedBusNumberException in init");
    } catch (IOException e) {
      System.out.println("ERROR IOException in init:" + e.getMessage());
    }

  }


  @Override
  public void move() {

  }

  @Override
  public void homeVert() {
    home(arm1);

  }

  @Override
  public void homeHor() {
    home(arm2);

  }

  @Override
  public void clamp(){
    System.out.println("clamp");
    try {
        arm3.write("^C0000000000000000".getBytes());
    } catch (IOException e) {
      e.printStackTrace();
    }
  }

  @Override
  public void release(){
    System.out.println("release");
    try {
        arm3.write("^R0000000000000000".getBytes());
    } catch (IOException e) {
      e.printStackTrace();
    }
  }


  private void home(I2CDevice arm) {
    try {
      if (arm != null) { arm.write("^H0000000000600000".getBytes()); }
      if (arm == arm1) {
        lastPos1 = 0;
      }
      if (arm == arm2) {
        lastPos2 = 0;
      }



    } catch (IOException e) {
      e.printStackTrace();
    }
  }
}
