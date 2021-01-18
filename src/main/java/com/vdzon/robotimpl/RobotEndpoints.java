//package com.vdzon.robotimpl;
//
//import com.vdzon.robitapi.RobotAansturing;
//import io.javalin.Javalin;
//
//public class RobotEndpoints {
//
//  private RobotAansturing robotAansturing;
//
//  public void initRestEndpoints(Javalin app, RobotAansturing robotAansturing) {
//    this.robotAansturing = robotAansturing;
//    app.get("/robotapi/move/:x/:y", ctx -> move(ctx.pathParam("x"), ctx.pathParam("y")));
//    app.get("/robotapi/rebuild", ctx -> robotAansturing.rebuild());
//    app.get("/robotapi/restart", ctx -> robotAansturing.restart());
//    app.get("/robotapi/home_vert", ctx -> robotAansturing.homeVert());
//    app.get("/robotapi/home_hor", ctx -> robotAansturing.homeHor());
//    app.get("/robotapi/clamp", ctx -> robotAansturing.clamp());
//    app.get("/robotapi/release", ctx -> robotAansturing.release());
//  }
//
//  private void move(String x, String y) {
//    robotAansturing.moveto(Integer.valueOf(x), Integer.valueOf(y));
//  }
//
//}
