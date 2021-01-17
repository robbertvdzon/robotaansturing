package com.vdzon;

import com.vdzon.robot.RobotAansturing;
import io.javalin.Javalin;
import io.javalin.http.Context;
import java.io.IOException;
import java.io.PrintWriter;

public class RestEndpoints {

  private RobotAansturing robotAansturing;

  public void initRestEndpoints(Javalin app, RobotAansturing robotAansturing) {
    this.robotAansturing = robotAansturing;
//    app.get("/", ctx -> ctx.redirect("/index.html"));
    app.post("/api/move", ctx -> ctx.result("Got move request of " + move(ctx)));
    app.get("/api/rebuild", ctx -> rebuild());
    app.get("/api/restart", ctx -> restart());
    app.get("/api/home_vert", ctx -> home_vert());
    app.get("/api/home_hor", ctx -> home_hor());
  }

  private void rebuild() {
    try {
      PrintWriter writer = new PrintWriter("/tmp/rebuildui", "UTF-8");
      writer.close();
      System.exit(0);
    } catch (IOException e) {
      e.printStackTrace();
    }
  }
  private void restart() {
      System.exit(0);
  }

  private void home_vert() {
    robotAansturing.homeVert();
  }
  private void home_hor() {
    robotAansturing.homeHor();
  }


  private String move(Context ctx) {
    return "";
  }


}
