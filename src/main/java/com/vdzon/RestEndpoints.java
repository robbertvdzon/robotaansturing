package com.vdzon;

import com.vdzon.robot.RobotAansturing;
import io.javalin.Context;
import io.javalin.Javalin;

public class RestEndpoints {

  private RobotAansturing robotAansturing;

  public void initRestEndpoints(Javalin app, RobotAansturing robotAansturing) {
    this.robotAansturing = robotAansturing;
    app.get("/", ctx -> ctx.redirect("/index.html"));
    app.post("/move", ctx -> ctx.result("Got move request of " + move(ctx)));
  }

  private String move(Context ctx) {
    return "";
  }


}
