package com.vdzon;

import com.vdzon.robitapi.RobotAansturing;
import io.javalin.Javalin;

public class RestEndpoints {

  private RobotAansturing robotAansturing;

  public void initRestEndpoints(Javalin app, RobotAansturing robotAansturing) {
    this.robotAansturing = robotAansturing;
    app.get("/api/move/:x/:y", ctx -> move(ctx.pathParam("x"), ctx.pathParam("y")));
    app.get("/api/rebuild", ctx -> robotAansturing.rebuild());
    app.get("/api/restart", ctx -> robotAansturing.restart());
    app.get("/api/home_vert", ctx -> robotAansturing.homeVert());
    app.get("/api/home_hor", ctx -> robotAansturing.homeHor());
    app.get("/api/sleep", ctx -> robotAansturing.sleep());
    app.get("/api/clamp", ctx -> robotAansturing.clamp());
    app.get("/api/release", ctx -> robotAansturing.release());
  }

  private void move(String x, String y) {
    robotAansturing.moveto(Integer.valueOf(x), Integer.valueOf(y));
  }


}
