package com.vdzon.ui;

import org.junit.Test;

public class MyPanelTest {

  @Test
  public void testSpeed(){


    Servo servo = new Servo();
    MyPanel panel = new MyPanel();
//    panel.calcDelays(24000,5000);
//    System.out.println(panel.formattedDelayFactor1 + ","+panel.formattedDelayFactor2);
//    panel.calcDelays(9000,15000);
//    System.out.println(panel.formattedDelayFactor1 + ","+panel.formattedDelayFactor2);
//    panel.calcDelays(10000,10000);
    System.out.println(panel.formattedDelayFactor1 + ","+panel.formattedDelayFactor2);
  }


}
