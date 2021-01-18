package com.vdzon;

import com.vdzon.ui.MainUI;
import com.vdzon.ui.MainWeb;

public class Main {
  public static void main(String[] args) {
    String OS = System.getProperty("os.name").toLowerCase();
    boolean schaakbord = !OS.contains("mac");

    if (schaakbord) {
      MainUI.main(args);
    }
    new MainWeb().start(schaakbord);
  }
}
