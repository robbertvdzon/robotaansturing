package com.vdzon.berekenarmen;

import java.util.stream.IntStream;
import javax.swing.SwingUtilities;

public class Main {

  private static final double HOEK_BASIS = 65;
  private static final double LENGTE_BASIS = 180;
  private static final double LENGTE_ARM_1 = 220;
  private static final double LENGTE_ARM_2 = 220;
  private static final double LENGTE_ARM_3 = 220;

  private static double MIN_X = 155;
  private static double MAX_X = 550;
  private static double MIN_Y = -180;// 3+15  (laatste arm is 7cm, en blijft 3 cm boven de tafel)
  private static double MAX_Y = -300;// 15+15 (laatste arm is 7cm, en blijft 15 cm boven de tafel)

  private static double bestHoek1 = 0;
  private static double bestHoek2 = 0;
  private static double bestHoek3 = 0;
  private static double bestDiff = Double.MAX_VALUE;


  public static void main(String[] args) {


    SwingUtilities.invokeLater(new Runnable() {
      public void run() {
        berekenHoekVoor(MIN_Y, MIN_X);
        double p1Hoek1 = bestHoek1;
        double p1Hoek2 = bestHoek2;
        double p1Hoek3 = bestHoek3;
        double p1Diff = bestDiff;

        berekenHoekVoor(MAX_Y, MIN_X);
        double p2Hoek1 = bestHoek1;
        double p2Hoek2 = bestHoek2;
        double p2Hoek3 = bestHoek3;
        double p2Diff = bestDiff;

        berekenHoekVoor(MIN_Y, MAX_X);
        double p3Hoek1 = bestHoek1;
        double p3Hoek2 = bestHoek2;
        double p3Hoek3 = bestHoek3;
        double p3Diff = bestDiff;

        berekenHoekVoor(MAX_Y, MAX_X);
        double p4Hoek1 = bestHoek1;
        double p4Hoek2 = bestHoek2;
        double p4Hoek3 = bestHoek3;
        double p4Diff = bestDiff;

        System.out.println("1:hoek1:"+p1Hoek1+" hoek2:"+p1Hoek2+" hoek3:"+p1Hoek3+"  diff="+p1Diff);
        System.out.println("2:hoek1:"+p2Hoek1+" hoek2:"+p2Hoek2+" hoek3:"+p2Hoek3+"  diff="+p2Diff);
        System.out.println("3:hoek1:"+p3Hoek1+" hoek2:"+p3Hoek2+" hoek3:"+p3Hoek3+"  diff="+p3Diff);
        System.out.println("4:hoek1:"+p4Hoek1+" hoek2:"+p4Hoek2+" hoek3:"+p4Hoek3+"  diff="+p4Diff);

        LineContainer lineContainer = new LineContainer();
        lineContainer.reset();
        lineContainer.addLine(new Segment(LENGTE_BASIS,Math.toRadians(180- HOEK_BASIS)));
        lineContainer.addLine(new Segment(LENGTE_ARM_1,Math.toRadians(180+ p1Hoek1)));
        lineContainer.addLine(new Segment(LENGTE_ARM_2,Math.toRadians(180+ p1Hoek2)));
        lineContainer.addLine(new Segment(LENGTE_ARM_3,Math.toRadians(180+ p1Hoek3)));

        lineContainer.reset();
        lineContainer.addLine(new Segment(LENGTE_BASIS,Math.toRadians(180- HOEK_BASIS)));
        lineContainer.addLine(new Segment(LENGTE_ARM_1,Math.toRadians(180+ p2Hoek1)));
        lineContainer.addLine(new Segment(LENGTE_ARM_2,Math.toRadians(180+ p2Hoek2)));
        lineContainer.addLine(new Segment(LENGTE_ARM_3,Math.toRadians(180+ p2Hoek3)));

        lineContainer.reset();
        lineContainer.addLine(new Segment(LENGTE_BASIS,Math.toRadians(180- HOEK_BASIS)));
        lineContainer.addLine(new Segment(LENGTE_ARM_1,Math.toRadians(180+ p3Hoek1)));
        lineContainer.addLine(new Segment(LENGTE_ARM_2,Math.toRadians(180+ p3Hoek2)));
        lineContainer.addLine(new Segment(LENGTE_ARM_3,Math.toRadians(180+ p3Hoek3)));

        lineContainer.reset();
        lineContainer.addLine(new Segment(LENGTE_BASIS,Math.toRadians(180- HOEK_BASIS)));
        lineContainer.addLine(new Segment(LENGTE_ARM_1,Math.toRadians(180+ p4Hoek1)));
        lineContainer.addLine(new Segment(LENGTE_ARM_2,Math.toRadians(180+ p4Hoek2)));
        lineContainer.addLine(new Segment(LENGTE_ARM_3,Math.toRadians(180+ p4Hoek3)));

        new MyPanel(lineContainer);

      }

    });
  }


  private static void berekenHoekVoor(double y, double x) {
    System.out.println("bereken voor x=" + x + " y=" + y);
    bestHoek1 = 0;
    bestHoek2 = 0;
    bestDiff = Double.MAX_VALUE;

    IntStream.range(90,200).forEach( tryHoekArm1->{
      IntStream.range(90,200).forEach( tryHoekArm2->{
        IntStream.range(90,200).forEach( tryHoekArm3->{
          tryHoeken(y, x, ((double)tryHoekArm1), ((double)tryHoekArm2), ((double)tryHoekArm3));
        });
      });
    });

  }

  private static void tryHoeken(double y, double x, double tryHoekArm1, double tryHoekArm2, double tryHoekArm3) {
    LineContainer lineContainer = new LineContainer();
    lineContainer.addLine(new Segment(LENGTE_BASIS,Math.toRadians(180- HOEK_BASIS)));
    lineContainer.addLine(new Segment(LENGTE_ARM_1,Math.toRadians(180+ tryHoekArm1)));
    lineContainer.addLine(new Segment(LENGTE_ARM_2,Math.toRadians(180+ tryHoekArm2)));
    lineContainer.addLine(new Segment(LENGTE_ARM_3,Math.toRadians(180+ tryHoekArm3)));
    double[] pos = lineContainer.getPos();
    double calculatedX = pos[0];
    double calculatedY = pos[1];
    double diff = Math.abs(x-calculatedX)+Math.abs(y-calculatedY);
    if (diff< bestDiff){
      bestHoek1 = tryHoekArm1;
      bestHoek2 = tryHoekArm2;
      bestHoek3 = tryHoekArm3;
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
