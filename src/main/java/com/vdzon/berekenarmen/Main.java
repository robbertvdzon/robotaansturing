package com.vdzon.berekenarmen;

import java.util.stream.IntStream;
import javax.swing.SwingUtilities;

public class Main {

  private static final double HOEK_BASIS = 75;
  private static final double LENGTE_BASIS = 120;
  private static final double LENGTE_ARM_1 = 360;
  private static final double LENGTE_ARM_2 = 340;

  private static double MIN_X = 155;
  private static double MAX_X = 550;
  private static double MIN_Y = -180;
  private static double MAX_Y = -250;

  public static void main(String[] args) {


    SwingUtilities.invokeLater(new Runnable() {
      public void run() {
        MyPanel mainPanel = new MyPanel(true);



        berekenHoekVoor(MIN_Y, MIN_X);
        double p1Hoek1 = bestHoek1;
        double p1Hoek2 = bestHoek2;
        double p1Diff = bestDiff;

        berekenHoekVoor(MAX_Y, MIN_X);
        double p2Hoek1 = bestHoek1;
        double p2Hoek2 = bestHoek2;
        double p2Diff = bestDiff;

        berekenHoekVoor(MIN_Y, MAX_X);
        double p3Hoek1 = bestHoek1;
        double p3Hoek2 = bestHoek2;
        double p3Diff = bestDiff;

        berekenHoekVoor(MAX_Y, MAX_X);
        double p4Hoek1 = bestHoek1;
        double p4Hoek2 = bestHoek2;
        double p4Diff = bestDiff;

        System.out.println("1:hoek1:"+p1Hoek1+" hoek2:"+p1Hoek2+"  diff="+p1Diff);
        System.out.println("2:hoek1:"+p2Hoek1+" hoek2:"+p2Hoek2+"  diff="+p2Diff);
        System.out.println("3:hoek1:"+p3Hoek1+" hoek2:"+p3Hoek2+"  diff="+p3Diff);
        System.out.println("4:hoek1:"+p4Hoek1+" hoek2:"+p4Hoek2+"  diff="+p4Diff);

        mainPanel.reset();
        mainPanel.addLine(new Segment(LENGTE_BASIS,Math.toRadians(180- HOEK_BASIS)));
        mainPanel.addLine(new Segment(LENGTE_ARM_1,Math.toRadians(180+ p1Hoek1)));
        mainPanel.addLine(new Segment(LENGTE_ARM_2,Math.toRadians(180+ p1Hoek2)));

        mainPanel.reset();
        mainPanel.addLine(new Segment(LENGTE_BASIS,Math.toRadians(180- HOEK_BASIS)));
        mainPanel.addLine(new Segment(LENGTE_ARM_1,Math.toRadians(180+ p2Hoek1)));
        mainPanel.addLine(new Segment(LENGTE_ARM_2,Math.toRadians(180+ p2Hoek2)));

        mainPanel.reset();
        mainPanel.addLine(new Segment(LENGTE_BASIS,Math.toRadians(180- HOEK_BASIS)));
        mainPanel.addLine(new Segment(LENGTE_ARM_1,Math.toRadians(180+ p3Hoek1)));
        mainPanel.addLine(new Segment(LENGTE_ARM_2,Math.toRadians(180+ p3Hoek2)));

        mainPanel.reset();
        mainPanel.addLine(new Segment(LENGTE_BASIS,Math.toRadians(180- HOEK_BASIS)));
        mainPanel.addLine(new Segment(LENGTE_ARM_1,Math.toRadians(180+ p4Hoek1)));
        mainPanel.addLine(new Segment(LENGTE_ARM_2,Math.toRadians(180+ p4Hoek2)));


      }

    });
  }

  private static double bestHoek1 = 0;
  private static double bestHoek2 = 0;
  private static double bestDiff = Double.MAX_VALUE;

  private static void berekenHoekVoor(double y, double x) {
    System.out.println("bereken voor x=" + x + " y=" + y);
    bestHoek1 = 0;
    bestHoek2 = 0;
    bestDiff = Double.MAX_VALUE;

    IntStream.range(0,180).forEach( tryHoekArm1->{
      IntStream.range(0,180).forEach( tryHoekArm2->{
        tryHoeken(y, x, tryHoekArm1, tryHoekArm2);
      });
    });

  }

  private static void tryHoeken(double y, double x, int tryHoekArm1, int tryHoekArm2) {
    MyPanel tryPanel = new MyPanel(false);
    tryPanel.addLine(new Segment(LENGTE_BASIS,Math.toRadians(180- HOEK_BASIS)));
    tryPanel.addLine(new Segment(LENGTE_ARM_1,Math.toRadians(180+ tryHoekArm1)));
    tryPanel.addLine(new Segment(LENGTE_ARM_2,Math.toRadians(180+ tryHoekArm2)));
    double[] pos = tryPanel.getPos();
    double calculatedX = pos[0];
    double calculatedY = pos[1];
    double diff = Math.abs(x-calculatedX)+Math.abs(y-calculatedY);
    if (diff< bestDiff){
      bestHoek1 = tryHoekArm1;
      bestHoek2 = tryHoekArm2;
      bestDiff = diff;
    }
  }


  private static void berekenHoekVoor2(double y, double x) {
    System.out.println("bereken voor x="+x+" y="+y);
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
    double angleDeg = 180-Math.toDegrees(angle);
    System.out.println("hoek="+angle+" "+angleDeg);


  }


}
