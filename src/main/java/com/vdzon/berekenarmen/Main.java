package com.vdzon.berekenarmen;

import javax.swing.SwingUtilities;

public class Main {

  private static final double HOEK_BASIS = 65;
  private static final double LENGTE_BASIS = 190;
  private static final double LENGTE_ARM_1 = 230;
  private static final double LENGTE_ARM_2 = 230;

  private static double hoekArm1 = 90;
  private static double hoekArm2 = 90;

  public static void main(String[] args) {


    SwingUtilities.invokeLater(new Runnable() {
      public void run() {
        MyPanel mainPanel = new MyPanel();

        berekenHoekVoor(-60,225);


        mainPanel.addLine(new Segment(LENGTE_BASIS,Math.toRadians(180- HOEK_BASIS)));
        mainPanel.addLine(new Segment(LENGTE_ARM_1,Math.toRadians(180+hoekArm1)));
        mainPanel.addLine(new Segment(LENGTE_ARM_2,Math.toRadians(180+hoekArm2)));
        mainPanel.printPos();
      }

    });
  }

  private static void berekenHoekVoor(double y, double x) {
    double baseX = LENGTE_BASIS * Math.cos(Math.toRadians(180- HOEK_BASIS));
    double baseY = -1 * LENGTE_BASIS * Math.sin(Math.toRadians(180- HOEK_BASIS));
    System.out.println(baseX);
    System.out.println(baseY);
    double diffX = x-baseX;
    double diffY = (y-baseY);
    System.out.println(diffX);
    System.out.println(diffY);

    double a = LENGTE_ARM_2;
    double b = LENGTE_ARM_1;
    double c = diffX;

    double angle = Math.acos((a*a-b*b-c*c)/(-2*b*c));
    double angleDeg = Math.toDegrees(angle);
    System.out.println("hoek="+angle+" "+angleDeg);


  }


}
