package com.vdzon.berekenarmen;

import java.util.ArrayList;
import java.util.List;

public class LineContainer {

  private double lastX = 0;
  private double lastY = 0;
  private double lastAngle = 0;
  private List<DoubleLine> lines = new ArrayList<>();

  public List<DoubleLine> getLines() {
    return lines;
  }

  public void reset() {
    lastX = 0;
    lastY = 0;
    lastAngle = 0;
  }

  public void addLine(Segment segment) {
    double realAngle = lastAngle + segment.getAngle();
    double x = segment.getLength() * Math.cos(realAngle);
    double y = segment.getLength() * Math.sin(realAngle);
    double newX = lastX + x;
    double newY = lastY - y;
    DoubleLine line = new DoubleLine(lastX, lastY, newX, newY);

    lines.add(line);

    lastX = newX;
    lastY = newY;
    lastAngle = realAngle;
  }

  public double[] getPos() {
    return new double[]{lastX, lastY};
  }
}
