package com.vdzon;

import java.util.ArrayList;
import java.util.List;
import java.util.stream.Collectors;

public class BerekenVersnelling {

  static final double MAX_SNELHEID = 1000000/40; // pulsen per sec
  static final double VERSNELLINGSTIJD = 200000; // in microsec
  static final int INDEX_STEPS = 20;


  public static void main(String args[]) {
    List<String> snelheidList = getSnelheidList().stream().map(i->i.toString()).collect(Collectors.toList());
    System.out.println("static const int delayList[] = {"+String.join(",",snelheidList)+"};");
    System.out.println("static const int delayArraySize = " + snelheidList.size() + ";");
    System.out.println("static const int indexSteps = " + INDEX_STEPS + ";");

    long time1 = berekenTijd(3750);
    System.out.println("time1 = "+time1);
  }

  public static long berekenTijd(int totalSteps) {
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
      time += delay*2;
    }
    return time;
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
