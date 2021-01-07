package com.vdzon.ui;

import com.vdzon.RestEndpoints;
import com.vdzon.robot.RobotAansturing;
import com.vdzon.robot.RobotAansturingImpl;
import io.javalin.Javalin;
import java.io.IOException;

public class Main {

  Javalin app;

  public static void main(String[] args) {
    new com.vdzon.Main().start();
  }

  public void start() {
    app = Javalin.create();
    app.enableStaticFiles("/html");
    RobotAansturing robotAansturing = new RobotAansturingImpl();
    new RestEndpoints().initRestEndpoints(app, robotAansturing);
    app.start(8080);

    try {
      String homeDirectory = System.getProperty("user.home");
      Process process;
      process = Runtime.getRuntime().exec(String.format("chromium-browser --start-fullscreen http://localhost:8080/index.html", homeDirectory));
      int exitCode = process.waitFor();
    } catch (Exception e) {
      e.printStackTrace();
    }

  }

  public void stop() {
    app.stop();
  }


}
