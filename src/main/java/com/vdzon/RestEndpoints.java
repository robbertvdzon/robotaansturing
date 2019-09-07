package com.vdzon;

import com.vdzon.robot.RobotAansturing;
import io.javalin.Context;
import io.javalin.Javalin;

public class RestEndpoints {

    private RobotAansturing robotAansturing;

    public void initRestEndpoints(Javalin app, RobotAansturing robotAansturing) {
        this.robotAansturing = robotAansturing;
        app.get("/", ctx -> ctx.redirect("/index.html"));
        app.post("/move", ctx -> ctx.result("Got move request of " + process(ctx)));
        app.post("/movearm", ctx -> ctx.result("Got move request of " + processMoveArm(ctx)));
        app.post("/move1", ctx -> ctx.result("Got move request of " + moveTo(ctx)));
    }

    private String moveTo(Context ctx) {
        System.out.println(ctx.body());
        MoveCombinedArmRequest moveRequest = ctx.bodyAsClass(MoveCombinedArmRequest.class);
        double m1 = 1.5;
        double m2 = 1.5;
        double m3 = 1.5;
        double m4 = 1.5;
        switch (moveRequest.getNr()){
            case 0:
                m1 = 1.5;
                m2 = 1.5;
                m3 = 1.5;
                m4 = 1.5;
                break;
            case 1:
                m1 = 1.5;
                m2 = 1.5;
                m3 = 1.5;
                m4 = 1.5;
                break;
            case 2:
                m1 = 1.5;
                m2 = 1.5;
                m3 = 1.5;
                m4 = 1.5;
                break;
            case 3:
                m1 = 1.5;
                m2 = 1.5;
                m3 = 1.5;
                m4 = 1.5;
                break;
        }
        robotAansturing.moveTo(m1, 0);
        robotAansturing.moveTo(m2, 1);
        robotAansturing.moveTo(m3, 2);
        robotAansturing.moveTo(m4, 3);
        return "move to : "+m1+", "+m2+", "+m3+", "+m4;
    }

    private String process(Context ctx) {
        System.out.println(ctx.body());
        MoveRequest moveRequest = ctx.bodyAsClass(MoveRequest.class);
        robotAansturing.move(moveRequest);
        return moveRequest.toString();
    }

    private String processMoveArm(Context ctx) {
        System.out.println(ctx.body());
        MoveArmRequest moveRequest = ctx.bodyAsClass(MoveArmRequest.class);
        if (moveRequest.getDelta()<0.0001){
            robotAansturing.stopMove(moveRequest.getArm());
        }
        else {
            double huidigePos = robotAansturing.getPos(moveRequest.getArm());
            double pos = moveRequest.getDelta() + huidigePos;
            System.out.println("Nieuwe pos:" + pos);
            robotAansturing.moveTo(pos, moveRequest.getArm());
        }
        return moveRequest.toString();
    }

}
