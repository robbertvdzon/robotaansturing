package com.vdzon;

import com.vdzon.robot.RobotAansturingClient;
import io.javalin.Javalin;

public class ClientMain {
    Javalin app;

    public static void main(String[] args) {
        new ClientMain().start();
    }

    public void start(){
        app = Javalin.create();
        app.enableStaticFiles("/html");
        RobotAansturingClient robotAansturing = new RobotAansturingClient();
        new RestEndpoints().initRestEndpoints(app, robotAansturing);
        app.start(8080);
    }

    public void stop(){
        app.stop();
    }


}
