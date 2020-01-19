package com.vdzon.ui;

import java.io.IOException;
import java.io.PrintWriter;
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
    tf.setBounds(50,100, 150,20);


    JButton b=new JButton("Restart & Update");
    b.setBounds(5,20,200,30);
    b.addActionListener(e -> updateAndRestart(tf));
    f.add(b);

    JButton bExit=new JButton("Restart & Update");
    bExit.setBounds(205,20,200,30);
    bExit.addActionListener(e -> System.exit(0));
    f.add(bExit);



    f.add(tf);
    f.setSize(400,400);
    f.setLayout(null);

    f.setExtendedState(JFrame.MAXIMIZED_BOTH);
//    f.setUndecorated(true);
    f.setVisible(true);



  }

  private void updateAndRestart(JTextField tf) {
    try {
      PrintWriter writer = new PrintWriter("/tmp/rebuildui", "UTF-8");
      writer.close();
      System.exit(0);
    } catch (IOException e) {
      e.printStackTrace();
    }
  }

}
