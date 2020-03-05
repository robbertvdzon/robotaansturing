package com.vdzon.ui;

import javax.swing.SwingUtilities;

public class Main {

  public static void main(String[] args) {

    try {
      Servo.main(args);
    }
    catch (Exception ex){
      ex.printStackTrace();
    }
    SwingUtilities.invokeLater(new Runnable() {
      public void run() {
        MyPanel mainPanel = new MyPanel();
      }

    });
  }


}
