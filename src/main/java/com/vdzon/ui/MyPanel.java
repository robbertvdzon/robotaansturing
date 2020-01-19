package com.vdzon.ui;

import com.pi4j.io.i2c.I2CFactory.UnsupportedBusNumberException;
import java.io.IOException;
import java.io.PrintWriter;
import javax.swing.JButton;
import javax.swing.JFrame;
import javax.swing.JPanel;
import javax.swing.JTextField;
import com.pi4j.io.i2c.I2CBus;
import com.pi4j.io.i2c.I2CDevice;
import com.pi4j.io.i2c.I2CFactory;

public class MyPanel extends JPanel {



  public MyPanel() {
    JFrame f = new JFrame("Schaakrobot");
    f.setDefaultCloseOperation(JFrame.DISPOSE_ON_CLOSE);
    f.getContentPane().add(this);
    f.pack();
    f.setLocationByPlatform(true);

    final JTextField tf=new JTextField();
    tf.setBounds(5,100, 150,20);


    JButton b=new JButton("Restart & Update");
    b.setBounds(5,20,200,40);
    b.addActionListener(e -> updateAndRestart(tf));
    f.add(b);

    JButton bExit=new JButton("Restart 2");
    bExit.setBounds(210,20,200,40);
    bExit.addActionListener(e -> System.exit(0));
    f.add(bExit);

    JButton bHome=new JButton("Home");
    bHome.setBounds(5,70,200,40);
    bHome.addActionListener(e -> home());
    f.add(bHome);



    f.add(tf);
    f.setSize(400,400);
    f.setLayout(null);

    f.setExtendedState(JFrame.MAXIMIZED_BOTH);
//    f.setUndecorated(true);
    f.setVisible(true);



  }

  private void home() {
    try {
      I2CBus i2c = I2CFactory.getInstance(I2CBus.BUS_1);
      I2CDevice device = i2c.getDevice(0x7);
      device.write("^H000000000700000".getBytes());

    } catch (UnsupportedBusNumberException e) {
      e.printStackTrace();
    } catch (IOException e) {
      e.printStackTrace();
    }
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
