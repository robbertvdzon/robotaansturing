package com.vdzon.ui;

public class Main {
  public static void main(String[] args) {
    String OS = System.getProperty("os.name").toLowerCase();

//    if (!OS.contains("mac")) {
      MainUI.main(args);
//    }
    MainWeb.main(args);
  }
}
