package com.vdzon.ui;

import javax.swing.SwingUtilities;

public class Main {

  public static void main(String[] args) {

    Servo servo = new Servo();
    SwingUtilities.invokeLater(new Runnable() {
      public void run() {
        MyPanel mainPanel = new MyPanel(servo);
      }

    });
  }


}
