package com.vdzon;

import com.vdzon.robot.RobotAansturing;
import com.vdzon.robot.RobotAansturingImpl;
import io.javalin.Javalin;

public class Main {

  Javalin app;

  public static void main(String[] args) {
    new Main().start();
  }

  public void start() {
    app = Javalin.create();
    app.enableStaticFiles("/html");
    RobotAansturing robotAansturing = new RobotAansturingImpl();
    new RestEndpoints().initRestEndpoints(app, robotAansturing);
    app.start(8080);
  }

  public void stop() {
    app.stop();
  }


}
