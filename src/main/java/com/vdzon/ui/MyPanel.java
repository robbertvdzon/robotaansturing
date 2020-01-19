package com.vdzon.ui;

import com.vdzon.berekenarmen.DoubleLine;
import com.vdzon.berekenarmen.Segment;
import java.awt.Dimension;
import java.awt.Graphics;
import java.awt.Graphics2D;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;
import javax.swing.ImageIcon;
import javax.swing.JButton;
import javax.swing.JFrame;
import javax.swing.JPanel;
import javax.swing.JTextField;


public class MyPanel extends JPanel {

  private static final int PREF_W = 600;
  private static final int PREF_H = PREF_W;

  public MyPanel() {
    JFrame f = new JFrame("Schaakrobot");
    f.setDefaultCloseOperation(JFrame.DISPOSE_ON_CLOSE);
    f.getContentPane().add(this);
    f.pack();
    f.setLocationByPlatform(true);

    final JTextField tf=new JTextField();
    tf.setBounds(50,50, 150,20);


    JButton b=new JButton("Restart & Update");
    b.setBounds(50,100,200,30);
    b.addActionListener(e -> button1(tf));


    f.add(b);
    f.add(tf);
    f.setSize(400,400);
    f.setLayout(null);

    f.setExtendedState(JFrame.MAXIMIZED_BOTH);
//    f.setUndecorated(true);
    f.setVisible(true);



  }

  private void button1(JTextField tf) {
    try {
      PrintWriter writer = new PrintWriter("/tmp/rebuildui", "UTF-8");
      writer.close();
      System.exit(0);
    } catch (IOException e) {
      e.printStackTrace();
    }
  }

}
