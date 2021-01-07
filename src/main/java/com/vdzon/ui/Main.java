package com.vdzon.ui;

import com.vdzon.RestEndpoints;
import com.vdzon.robot.RobotAansturing;
import com.vdzon.robot.RobotAansturingImpl;
import io.javalin.Javalin;
import io.javalin.plugin.rendering.vue.VueComponent;

public class Main {

  Javalin app;

  public static void main(String[] args) {
    new Main().start();
  }

  public void start() {
    System.out.println("Starting backend..");

    app = Javalin.create(  (config) ->{
        config.enableWebjars();
      config.addStaticFiles("/html");
    });

//    app = Javalin.create();
//    app.enableStaticFiles("/html");

    app.get("/", new VueComponent("<status></status>"));


    RobotAansturing robotAansturing = new RobotAansturingImpl();
    new RestEndpoints().initRestEndpoints(app, robotAansturing);
    System.out.println("Starting browser");
//    startBrowser();
    System.out.println("Starting server");
    app.start(8080);
  }

  private void startBrowser() {
    try {
      String homeDirectory = System.getProperty("user.home");
      Process process;
      process = Runtime.getRuntime().exec(String.format("chromium-browser --start-fullscreen http://localhost:8080/", homeDirectory));
//      int exitCode = process.waitFor();
    } catch (Exception e) {
      e.printStackTrace();
    }
    System.out.println("Browser started");
  }

  public void stop() {
    app.stop();
  }


}
