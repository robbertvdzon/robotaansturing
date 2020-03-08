package com.vdzon.ui;

import com.pi4j.io.i2c.I2CBus;
import com.pi4j.io.i2c.I2CDevice;
import com.pi4j.io.i2c.I2CFactory;
import com.pi4j.io.i2c.I2CFactory.UnsupportedBusNumberException;
import com.vdzon.BerekenVersnelling;
import com.vdzon.Delays;
import java.io.IOException;
import java.io.PrintWriter;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.Arrays;
import javax.swing.JButton;
import javax.swing.JFrame;
import javax.swing.JPanel;
import javax.swing.JScrollPane;
import javax.swing.JTextArea;
import javax.swing.JTextField;

public class MyPanel extends JPanel {


  private static int ARM1 = 0x5;
  private static int ARM2 = 0x7;
  private static int ARM3 = 0x8;
  int lastPos1 = 0;
  int lastPos2 = 0;
  int lastPos3 = 0;

  String formattedDelayFactor1 = "0100";
  String formattedDelayFactor2 = "0100";

  private I2CDevice arm1 = null;
  private I2CDevice arm2 = null;
  private I2CDevice arm3 = null;
  private Thread currentLoopThread = null;
  JTextField vertragingTextfield;

  public MyPanel() {
    System.out.println("Starting");
    init();

    JFrame f = new JFrame("Schaakrobot v1.6");

    f.setDefaultCloseOperation(JFrame.DISPOSE_ON_CLOSE);
    f.getContentPane().add(this);
    f.pack();
    f.setLocationByPlatform(true);

    JButton b = new JButton("Restart & Update");
    b.setBounds(5, 20, 200, 40);
    b.addActionListener(e -> updateAndRestart());
    f.add(b);

    JButton bExit = new JButton("Restart");
    bExit.setBounds(210, 20, 200, 40);
    bExit.addActionListener(e -> System.exit(0));
    f.add(bExit);


    vertragingTextfield = new JTextField();
    vertragingTextfield.setBounds(410, 20, 100, 40);
    vertragingTextfield.setText("0100");
    f.add(vertragingTextfield);


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
      bHome.addActionListener(e -> homeArm3());
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
        JButton button = new JButton("-1000");
        button.setBounds(315, 120, 100, 40);
        button.addActionListener(e -> gotoPos(tf, arm1, -1000));
        f.add(button);
      }
      {
        JButton button = new JButton("+1000");
        button.setBounds(420, 120, 100, 40);
        button.addActionListener(e -> gotoPos(tf, arm1, +1000));
        f.add(button);
      }
      {
        JButton button = new JButton("-5000");
        button.setBounds(525, 120, 100, 40);
        button.addActionListener(e -> gotoPos(tf, arm1, -5000));
        f.add(button);
      }
      {
        JButton button = new JButton("+5000");
        button.setBounds(630, 120, 100, 40);
        button.addActionListener(e -> gotoPos(tf, arm1, +5000));
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
        JButton button = new JButton("-1000");
        button.setBounds(315, 170, 100, 40);
        button.addActionListener(e -> gotoPos(tf, arm2, -1000));
        f.add(button);
      }
      {
        JButton button = new JButton("+1000");
        button.setBounds(420, 170, 100, 40);
        button.addActionListener(e -> gotoPos(tf, arm2, +1000));
        f.add(button);
      }
      {
        JButton button = new JButton("-5000");
        button.setBounds(525, 170, 100, 40);
        button.addActionListener(e -> gotoPos(tf, arm2, -5000));
        f.add(button);
      }
      {
        JButton button = new JButton("+5000");
        button.setBounds(630, 170, 100, 40);
        button.addActionListener(e -> gotoPos(tf, arm2, +5000));
        f.add(button);
      }
    }
    {
      final JTextField tf = new JTextField();
      tf.setBounds(5, 220, 100, 40);
      tf.setText("90");
      f.add(tf);
      {
        JButton button = new JButton("Goto");
        button.setBounds(210, 220, 100, 40);
        button.addActionListener(e -> gotoPosArm3(tf, 0, 1000));
        f.add(button);
      }
      {
        JButton button = new JButton("-10");
        button.setBounds(315, 220, 100, 40);
        button.addActionListener(e -> gotoPosArm3(tf, -10, 1000));
        f.add(button);
      }
      {
        JButton button = new JButton("+10");
        button.setBounds(420, 220, 100, 40);
        button.addActionListener(e -> gotoPosArm3(tf, +10, 1000));
        f.add(button);
      }
      {
        JButton button = new JButton("-50");
        button.setBounds(525, 220, 100, 40);
        button.addActionListener(e -> gotoPosArm3(tf, -50, 1000));
        f.add(button);
      }
      {
        JButton button = new JButton("+50");
        button.setBounds(630, 220, 100, 40);
        button.addActionListener(e -> gotoPosArm3(tf, +50, 1000));
        f.add(button);
      }
    }

    {
      JButton button = new JButton("Magn. aan");
      button.setBounds(525, 270, 100, 40);
      button.addActionListener(e -> magneet(true));
      f.add(button);
    }
    {
      JButton button = new JButton("Magn. uit");
      button.setBounds(630, 270, 100, 40);
      button.addActionListener(e -> magneet(false));
      f.add(button);
    }


    {
      JTextArea textArea = new JTextArea(5, 20);
      JScrollPane scrollPane = new JScrollPane(textArea);
      scrollPane.setBounds(5, 270, 300, 80);
      textArea.setEditable(true);
      f.add(scrollPane);
      textArea.setText(loadFile());
      {
        JButton button = new JButton("save");
        button.setBounds(315, 270, 100, 40);
        button.addActionListener(e -> saveToFile(textArea.getText()));
        f.add(button);
      }
      {
        JButton button = new JButton("run once");
        button.setBounds(315, 320, 100, 40);
        button.addActionListener(e -> runOnceInThread(textArea.getText()));
        f.add(button);
      }
      {
        JButton button = new JButton("loop");
        button.setBounds(315, 370, 100, 40);
        button.addActionListener(e -> startLoop(textArea.getText()));
        f.add(button);
      }
      {
        JButton button = new JButton("stop");
        button.setBounds(420, 370, 100, 40);
        button.addActionListener(e -> stopLoop());
        f.add(button);
      }
    }

    f.setLayout(null);

    f.setExtendedState(JFrame.MAXIMIZED_BOTH);
    f.setVisible(true);
  }

  private void magneet(boolean aan){
    System.out.println("write arm3");
    try {
      if (aan)
        arm3.write("^S0000000000000000".getBytes());
      else
        arm3.write("^S0000000000000000".getBytes());
    } catch (IOException e) {
      e.printStackTrace();
    }
    System.out.println("done");
  }

  private void stopLoop() {
    if (currentLoopThread != null) {
      currentLoopThread.stop();
    }
  }

  private void startLoop(String text) {
    currentLoopThread = new Thread(() -> runInLoop(text));
    currentLoopThread.start();
  }

  private void runOnceInThread(String text) {
    new Thread(() -> runOnce(text)).start();
  }

  private void runInLoop(String text) {
    while (true) {
      runOnce(text);
    }
  }

  private void runOnce(String text) {
    String[] split = text.split("#");

    Arrays.asList(split).forEach(
        row -> {
          if (row != null && !row.startsWith("#")) {
            String[] splitWords = row.split(",");

            if (splitWords.length >= 3) {
              String posArm1 = splitWords[0].trim();
              String posArm2 = splitWords[1].trim();
              String posArm3 = splitWords[2].trim();
              try {
                int pos1 = Integer.parseInt(posArm1);
                int pos2 = Integer.parseInt(posArm2);
                int pos3 = Integer.parseInt(posArm3);
                long totalTime = calcDelays(pos1, pos2);

                System.out.println("totalTime="+totalTime);
                System.out.println("formattedDelayFactor1="+formattedDelayFactor1);
                System.out.println("formattedDelayFactor2="+formattedDelayFactor2);

                gotoPos(arm1, pos1, formattedDelayFactor1);
                gotoPos(arm2, pos2, formattedDelayFactor2);
                gotoPosArm3(pos3, totalTime);

                Thread.sleep(totalTime + 2000);
              } catch (Exception ex) {
                ex.printStackTrace();

              }
            }

          }
        }
    );
  }

  public long calcDelays(int pos1, int pos2) {
    int pulses1 = Math.abs(pos1 - lastPos1);
    int pulses2 = Math.abs(pos2 - lastPos2);

    Delays delays = BerekenVersnelling.calcDelays(pulses1, pulses2);

    double delayFactor1 = pulses1 == 0 ? 1  : delays.delay1;
    double delayFactor2 = pulses2 == 0 ? 1  : delays.delay2;

    if (delayFactor1>9999) delayFactor1 = 9999;
    if (delayFactor2>9999) delayFactor2 = 9999;

    formattedDelayFactor1 = String.format("%04d", (int)delayFactor1);
    formattedDelayFactor2 = String.format("%04d", (int)delayFactor2);
    return delays.totalTime;
  }


  private void saveToFile(String text) {
    Path path = Paths.get("/home/pi/loop.data");
    byte[] strToBytes = text.getBytes();
    try {
      Files.write(path, strToBytes);
    } catch (IOException e) {
      e.printStackTrace();
    }
  }

  private String loadFile() {
    try {
      return new String(Files.readAllBytes(Paths.get("/home/pi/loop.data")));
    } catch (IOException e) {
      e.printStackTrace();
    }
    return "123";
  }

  public void init() {
    if (arm1 != null) { return; }
    try {
      I2CBus i2c = I2CFactory.getInstance(I2CBus.BUS_1);
      arm1 = i2c.getDevice(ARM1);
      arm2 = i2c.getDevice(ARM2);
      arm3 = i2c.getDevice(ARM3);
    } catch (UnsupportedBusNumberException e) {
      System.out.println("ERROR, UnsupportedBusNumberException in init");
    } catch (IOException e) {
      System.out.println("ERROR IOException in init:" + e.getMessage());
    }

  }

  private void gotoPos(JTextField tf, I2CDevice arm, int increment) {
    int pos = Integer.parseInt(tf.getText());
    int newPos = pos + increment;
    tf.setText("" + newPos);
    gotoPos(arm, newPos);
  }

  private void gotoPosArm3(JTextField tf, int increment, long time) {
    int pos = Integer.parseInt(tf.getText());
    int newPos = pos + increment;
    tf.setText("" + newPos);
    gotoPosArm3(newPos, time);
  }

  public void gotoPosArm3(int pos, long delay) {
    try {
      String formattedPos = String.format("%06d", pos);
      String time = String.format("%04d", delay);
      String command = "^S" + formattedPos + time;
      System.out.println("command:"+command);
      arm3.write(command.getBytes());
      lastPos3 = pos;
    } catch (IOException e) {
      e.printStackTrace();
    }

    int oldPos = lastPos3;
    try {
      arm3.write("^S0000000000600000".getBytes());
    } catch (IOException e) {
      e.printStackTrace();
    }

    lastPos3 = pos;
  }


  public void gotoPos(I2CDevice arm, int pos) {
    gotoPos(arm, pos, "0100");
  }

  public void gotoPos(I2CDevice arm, int pos, String vertraging) {
    try {
      String formattedPos = String.format("%06d", pos);
      String command = "^M" + formattedPos + vertraging;
      System.out.println("command:"+command);
      if (arm != null) { arm.write(command.getBytes()); }
      if (arm == arm1) { lastPos1 = pos; }
      if (arm == arm2) { lastPos2 = pos; }

    } catch (IOException e) {
      e.printStackTrace();
    }


  }

  private void home(I2CDevice arm) {
    try {
      if (arm != null) { arm.write("^H0000000000600000".getBytes()); }
      if (arm == arm1) { lastPos1 = 0; }
      if (arm == arm2) { lastPos2 = 0; }
    } catch (IOException e) {
      e.printStackTrace();
    }
  }

  private void homeArm3() {
    try {
      String formattedPos = String.format("%06d", 0);
      String command = "^S" + formattedPos + "1000";
      System.out.println("command:"+command);
      arm3.write(command.getBytes());
      lastPos3 = 0;
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
