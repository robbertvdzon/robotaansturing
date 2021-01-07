package com.vdzon.ui;

import javax.swing.SwingUtilities;

public class MainUI {
  public static void main(String[] args) {

    SwingUtilities.invokeLater(new Runnable() {
      public void run() {
        MyPanel mainPanel = new MyPanel();
        mainPanel.fullscreen();
      }

    });
  }


}
