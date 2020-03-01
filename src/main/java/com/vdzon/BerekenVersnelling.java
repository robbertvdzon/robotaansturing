package com.vdzon;

public class BerekenVersnelling {

  static final double MAX_SNELHEID = 1000000/40; // pulsen per sec
  static final double VERSNELLINGSTIJD = 200000; // in microsec
  static final int INDEX_STEPS = 20;


  public static void main(String args[]) {
    System.out.println();
    int count = 0;
    int index = 0;
    boolean finished = false;
    double tijd = 0.001;

    System.out.print("static const int delayList[] = {");

    while (!finished) {
      double delay = VERSNELLINGSTIJD / (MAX_SNELHEID * tijd);
      double snelheid = 1000000 / delay;
      finished = snelheid > MAX_SNELHEID;
      tijd += (delay / 1000000);
      count++;
      if (count % INDEX_STEPS == 0) {
        if (index > 0) { System.out.print(","); }
        System.out.print((int) delay);
        index++;
      }
    }
    System.out.println("};");
    System.out.println("static const int delayArraySize = " + index + ";");
    System.out.println("static const int indexSteps = " + INDEX_STEPS + ";");


  }


}
