package com.vdzon.ui;

import org.junit.Test;

public class MyPanelTest {

  @Test
  public void testSpeed(){
    MyPanel panel = new MyPanel();
    panel.calcDelays(24000,5000);
    System.out.println(panel.formattedDelayFactor2 + ","+panel.formattedDelayFactor3);
    panel.calcDelays(9000,15000);
    System.out.println(panel.formattedDelayFactor2 + ","+panel.formattedDelayFactor3);
    panel.calcDelays(10000,10000);
    System.out.println(panel.formattedDelayFactor2 + ","+panel.formattedDelayFactor3);
  }


}
