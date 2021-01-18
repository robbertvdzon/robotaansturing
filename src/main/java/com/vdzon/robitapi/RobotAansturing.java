package com.vdzon.robitapi;


public interface RobotAansturing {

  void moveto(int x, int y);

  void homeVert();

  void homeHor();

  void sleep();

  void clamp();

  void release();

  void rebuild();

  void restart();

  void waitUntilReady();
}
