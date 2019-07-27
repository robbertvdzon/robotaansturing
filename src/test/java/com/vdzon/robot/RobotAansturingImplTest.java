package com.vdzon.robot;

import com.vdzon.MoveRequest;
import org.junit.Test;

import static org.junit.Assert.*;

public class RobotAansturingImplTest {

    @Test
    public void test(){
        RobotAansturingImpl robotAansturing = new RobotAansturingImpl(true);
        MoveRequest mr = new MoveRequest(10,20,30,40,50,100);
        robotAansturing.move(mr);
        MoveRequest mr2 = new MoveRequest(30,40,50,60,70,100);
        robotAansturing.move(mr2);
        MoveRequest mr3 = new MoveRequest(0,0,0,0,0,1000);
        robotAansturing.move(mr3);
    }

}