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
    app.post("/move", ctx -> ctx.result("Got move request of " + move(ctx)));
    app.get("/rebuild", ctx -> rebuild());
    app.get("/restart", ctx -> restart());
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
