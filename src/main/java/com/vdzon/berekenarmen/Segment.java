package com.vdzon.berekenarmen;

public class Segment {
  private double length;
  private double angle;

  public Segment(double length, double angle) {
    this.length = length;
    this.angle = angle;
  }

  public double getLength() {
    return length;
  }

  public void setLength(double length) {
    this.length = length;
  }

  public double getAngle() {
    return angle;
  }

  public void setAngle(double angle) {
    this.angle = angle;
  }
}
