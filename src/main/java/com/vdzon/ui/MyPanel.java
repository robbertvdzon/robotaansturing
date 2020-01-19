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

  private static int ARM1 = 0x8;
  private static int ARM2 = 0x7;
  private static int ARM3 = 0x5;

  private I2CDevice arm1 = null;
  private I2CDevice arm2 = null;
  private I2CDevice arm3 = null;


  public void init(){
    if (arm1!=null) return;
    try {
      I2CBus i2c = I2CFactory.getInstance(I2CBus.BUS_1);
      arm1 = i2c.getDevice(ARM1);
      arm2 = i2c.getDevice(ARM2);
      arm3 = i2c.getDevice(ARM3);
    } catch (UnsupportedBusNumberException e) {
      e.printStackTrace();
    } catch (IOException e) {
      e.printStackTrace();
    }

  }


  public MyPanel() {
    JFrame f = new JFrame("Schaakrobot");
    f.setDefaultCloseOperation(JFrame.DISPOSE_ON_CLOSE);
    f.getContentPane().add(this);
    f.pack();
    f.setLocationByPlatform(true);


    JButton b=new JButton("Restart & Update");
    b.setBounds(5,20,200,40);
    b.addActionListener(e -> updateAndRestart());
    f.add(b);

    JButton bExit=new JButton("Restart");
    bExit.setBounds(210,20,200,40);
    bExit.addActionListener(e -> System.exit(0));
    f.add(bExit);

    {
      JButton bHome = new JButton("Home 1");
      bHome.setBounds(5, 70, 200, 40);
      bHome.addActionListener(e -> home(arm1));
      f.add(bHome);
    }

    {
      JButton bHome = new JButton("Home 2");
      bHome.setBounds(210, 70, 200, 40);
      bHome.addActionListener(e -> home(arm2));
      f.add(bHome);
    }

    {
      JButton bHome = new JButton("Home 3");
      bHome.setBounds(415, 70, 200, 40);
      bHome.addActionListener(e -> home(arm3));
      f.add(bHome);
    }

    {
      final JTextField tf = new JTextField();
      tf.setBounds(5, 120, 100, 40);
      tf.setText("0");
      f.add(tf);
      {
        JButton button = new JButton("Goto");
        button.setBounds(210, 120, 100, 40);
        button.addActionListener(e -> gotoPos(tf, arm1, 0));
        f.add(button);
      }
      {
        JButton button = new JButton("-100");
        button.setBounds(315, 120, 100, 40);
        button.addActionListener(e -> gotoPos(tf, arm1, -100));
        f.add(button);
      }
      {
        JButton button = new JButton("+100");
        button.setBounds(420, 120, 100, 40);
        button.addActionListener(e -> gotoPos(tf, arm1, +100));
        f.add(button);
      }
    }
    {
      final JTextField tf = new JTextField();
      tf.setBounds(5, 170, 100, 40);
      tf.setText("0");
      f.add(tf);
      {
        JButton button = new JButton("Goto");
        button.setBounds(210, 170, 100, 40);
        button.addActionListener(e -> gotoPos(tf, arm2, 0));
        f.add(button);
      }
      {
        JButton button = new JButton("-100");
        button.setBounds(315, 170, 100, 40);
        button.addActionListener(e -> gotoPos(tf, arm2, -100));
        f.add(button);
      }
      {
        JButton button = new JButton("+100");
        button.setBounds(420, 170, 100, 40);
        button.addActionListener(e -> gotoPos(tf, arm2, +100));
        f.add(button);
      }
    }
    {
      final JTextField tf = new JTextField();
      tf.setBounds(5, 220, 100, 40);
      tf.setText("0");
      f.add(tf);
      {
        JButton button = new JButton("Goto");
        button.setBounds(210, 220, 100, 40);
        button.addActionListener(e -> gotoPos(tf, arm3, 0));
        f.add(button);
      }
      {
        JButton button = new JButton("-100");
        button.setBounds(315, 220, 100, 40);
        button.addActionListener(e -> gotoPos(tf, arm3, -100));
        f.add(button);
      }
      {
        JButton button = new JButton("+100");
        button.setBounds(420, 220, 100, 40);
        button.addActionListener(e -> gotoPos(tf, arm3, +100));
        f.add(button);
      }
    }



//    f.setSize(400,400);
    f.setLayout(null);

    f.setExtendedState(JFrame.MAXIMIZED_BOTH);
    f.setVisible(true);
  }

  private void gotoPos(JTextField tf, I2CDevice arm, int increment) {
    init();
    int pos = Integer.parseInt(tf.getText());
    int newPos = pos + increment;
    tf.setText(""+newPos);

    try {
      String formatted = String.format("%06d", newPos);
      System.out.println(formatted);
      String command = "^M"+formatted+"000900000";
      arm.write(command.getBytes());


    } catch (IOException e) {
      e.printStackTrace();
    }


  }

  private void home(I2CDevice arm) {
    init();
    try {
      arm.write("^H000000000700000".getBytes());
    } catch (IOException e) {
      e.printStackTrace();
    }
  }

  private void updateAndRestart() {
    try {
      PrintWriter writer = new PrintWriter("/tmp/rebuildui", "UTF-8");
      writer.close();
      System.exit(0);
    } catch (IOException e) {
      e.printStackTrace();
    }
  }

}
