package com.vdzon;

import java.util.ArrayList;
import java.util.List;
import java.util.stream.Collectors;

public class BerekenVersnelling {
  /*
  100: 65
  1000: 335
  2000: 525
  10.000 1576
  15.000 2201
   */

  static final double MAX_SNELHEID = 1000000/40; // pulsen per sec
  static final double VERSNELLINGSTIJD = 200000; // in microsec
  static final int INDEX_STEPS = 20;


  public static void main(String args[]) {
    List<String> snelheidList = getSnelheidList().stream().map(i->i.toString()).collect(Collectors.toList());
    System.out.println("static const int delayList[] = {"+String.join(",",snelheidList)+"};");
    System.out.println("static const int delayArraySize = " + snelheidList.size() + ";");
    System.out.println("static const int indexSteps = " + INDEX_STEPS + ";");

    double time1 = berekenTijd(100);
    System.out.println("100:"+berekenTijd(100));
    System.out.println("1000:"+berekenTijd(1000));
    System.out.println("2000:"+berekenTijd(2000));
    System.out.println("10000:"+berekenTijd(10000));
    System.out.println("15000:"+berekenTijd(15000));

    System.out.println("100 = "+(berekenTijd(100)-65)/100);
    System.out.println("1000 = "+(berekenTijd(1000)-335)/1000);
    System.out.println("2000 = "+(berekenTijd(2000)-525)/2000);
    System.out.println("10000 = "+(berekenTijd(10000)-1565)/10000);
    System.out.println("15000 = "+(berekenTijd(15000)-2201)/15000);
  }

  public static double berekenTijd(int totalSteps) {
    List<Integer> snelheidList = getSnelheidList();
    long time = 0;


    long halfway = totalSteps / 2;
    int delayIndex = 0;
    int remainingDelayIndex = 0;
    int delay = 0;
    int delayArraySize = snelheidList.size();

    for (int i = 0; i < totalSteps; i++) {
      int remainingSteps = totalSteps - i;
      delayIndex = i / INDEX_STEPS;
      remainingDelayIndex = remainingSteps / INDEX_STEPS;
      if (i == 0 || i % INDEX_STEPS == 0) {
        if (i < halfway && delayIndex < delayArraySize)
          delay = snelheidList.get(delayIndex);
        if (i > halfway && remainingDelayIndex < delayArraySize)
          delay = snelheidList.get(remainingDelayIndex);
      }
      time += delay*2+45;
    }
    return time/1000;
  }


  public static List<Integer> getSnelheidList() {
    List<Integer> result = new ArrayList<>();
    int count = 0;
    boolean finished = false;
    double tijd = 0.001;

    while (!finished) {
      double delay = VERSNELLINGSTIJD / (MAX_SNELHEID * tijd);
      double snelheid = 1000000 / delay;
      finished = snelheid > MAX_SNELHEID;
      tijd += (delay / 1000000);
      count++;
      if (count % INDEX_STEPS == 0) {
        result.add((int)delay);
      }
    }
    return result;

  }

}
