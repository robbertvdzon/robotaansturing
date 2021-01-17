package com.vdzon.ui;

import com.vdzon.RestEndpoints;
import com.vdzon.robot.RobotAansturing;
import com.vdzon.robot.RobotAansturingImpl;
import io.javalin.Javalin;
import io.javalin.plugin.rendering.vue.VueComponent;

public class MainWeb {

  Javalin app;

  public static void main(String[] args) {
    new MainWeb().start();
  }

  public void start() {
    System.out.println("Starting backend..");

    app = Javalin.create(  (config) ->{
        config.enableWebjars();
      config.addStaticFiles("/html");
    });

    app.get("/", new VueComponent("<status></status>"));
    app.get("/demo", new VueComponent("<demo></demo>"));
    app.get("/status", new VueComponent("<status></status>"));
    app.get("/manual", new VueComponent("<manual></manual>"));
    app.get("/home", new VueComponent("<home></home>"));
    app.get("/rebuild", new VueComponent("<rebuild></rebuild>"));


    RobotAansturing robotAansturing = new RobotAansturingImpl();
    new RestEndpoints().initRestEndpoints(app, robotAansturing);
    System.out.println("Starting server");
    app.start(8080);
  }


  public void stop() {
    app.stop();
  }


}
