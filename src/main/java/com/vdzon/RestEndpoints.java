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
    app.get("/api/home_vert", ctx -> robotAansturing.homeVert());
    app.get("/api/home_hor", ctx -> robotAansturing.homeHor());
    app.get("/api/clamp", ctx -> robotAansturing.clamp());
    app.get("/api/release", ctx -> robotAansturing.release());
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

  private String move(Context ctx) {
    return "";
  }


}
