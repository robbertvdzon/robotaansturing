package com.vdzon.robot;

import com.vdzon.MoveRequest;

public interface RobotAansturing {
    void move(MoveRequest moveRequest);
    void moveTo(double pos, int arm);
    double getPos(int arm);
}
