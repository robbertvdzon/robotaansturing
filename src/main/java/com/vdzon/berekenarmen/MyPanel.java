package com.vdzon.berekenarmen;

import java.awt.Dimension;
import java.awt.Graphics;
import java.awt.Graphics2D;
import java.awt.Point;
import java.util.ArrayList;
import java.util.List;
import javax.swing.JFrame;
import javax.swing.JPanel;


public class MyPanel extends JPanel {

  private static final int PREF_W = 900;
  private static final int PREF_H = 600;
  private static final int OFFSET_X = 200;
  private static final int OFFSET_Y = PREF_H;


  private LineContainer lineContainer;

  public MyPanel(LineContainer lineContainer) {
      JFrame frame = new JFrame("Path2DExample");
      frame.setDefaultCloseOperation(JFrame.DISPOSE_ON_CLOSE);
      frame.getContentPane().add(this);
      frame.pack();
      frame.setLocationByPlatform(true);
      frame.setVisible(true);
      this.lineContainer = lineContainer;
  }

  @Override
  protected void paintComponent(Graphics g) {
    super.paintComponent(g);
    Graphics2D g2 = (Graphics2D) g;

    g2.drawOval(-2+OFFSET_X, -2+OFFSET_Y, 4, 4);

    lineContainer.getLines().forEach(line->{
      g2.drawLine(
          OFFSET_X+(int)Math.round(line.getX1()),
          OFFSET_Y+(int)Math.round(line.getY1()),
          OFFSET_X+(int)Math.round(line.getX2()),
          OFFSET_Y+(int)Math.round(line.getY2()));
    });

  }

  @Override
  public Dimension getPreferredSize() {
    if (isPreferredSizeSet()) {
      return super.getPreferredSize();
    }
    return new Dimension(PREF_W, PREF_H);
  }


}
