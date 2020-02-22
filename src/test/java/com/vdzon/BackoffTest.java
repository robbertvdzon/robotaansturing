package com.vdzon;

import org.junit.Test;

public class BackoffTest {
  @Test
  public void test(){
    long maxMinutes = 60*2*1*1; // 2 weeks : 20160
    long time = 0;
    long count = 0;
    long lastDiff = 1;
    while (time<maxMinutes){
      count++;
      long newDiff = lastDiff*2;
      System.out.println("wacht "+newDiff+" minutes");
      time = time+newDiff;
      lastDiff = newDiff;

    }
    System.out.println(count);
  }

}
