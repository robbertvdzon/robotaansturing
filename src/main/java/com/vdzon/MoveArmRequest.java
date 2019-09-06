package com.vdzon;

import lombok.Data;

@Data
public class MoveArmRequest {
    private int arm;
    private double delta;

}
