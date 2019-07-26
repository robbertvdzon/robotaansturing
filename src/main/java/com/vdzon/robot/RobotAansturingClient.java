package com.vdzon.robot;

import com.vdzon.MoveRequest;

public class RobotAansturingClient implements RobotAansturing{
    @Override
    public void move(MoveRequest moveRequest) {
        System.out.println("Move to "+moveRequest);
    }
}
