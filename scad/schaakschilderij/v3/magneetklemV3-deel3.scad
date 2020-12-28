
difference(){
	union(){
        translate([0,0,0]){
           cube([71,13,3], center=false);
        }        
	}
	union() {
        translate([71/2,10,-1]){
            rotate([0,0,0]){
                cylinder(h=28, r=1.5, $fn=100, center=false);
            }
        }
        translate([71/2,3,-1]){
            rotate([0,0,0]){
                cylinder(h=28, r=1.5, $fn=100, center=false);
            }
        }

        translate([71/2-5,10,-1]){
            rotate([0,0,0]){
                cylinder(h=28, r=1.5, $fn=100, center=false);
            }
        }
        translate([71/2-5,3,-1]){
            rotate([0,0,0]){
                cylinder(h=28, r=1.5, $fn=100, center=false);
            }
        }

        translate([71/2+5,10,-1]){
            rotate([0,0,0]){
                cylinder(h=28, r=1.5, $fn=100, center=false);
            }
        }
        translate([71/2+5,3,-1]){
            rotate([0,0,0]){
                cylinder(h=28, r=1.5, $fn=100, center=false);
            }
        }



        translate([3+21,6.5,-1]){
            rotate([0,0,0]){
                cylinder(h=28, r=1.5, $fn=100, center=false);
            }
        }
        translate([71-3-21,6.5,-1]){
            rotate([0,0,0]){
                cylinder(h=28, r=1.5, $fn=100, center=false);
            }
        }

        translate([3,6.5,-1]){
            rotate([0,0,0]){
                cylinder(h=28, r=1.2, $fn=100, center=false);
            }
        }
        translate([71-3,6.5,-1]){
            rotate([0,0,0]){
                cylinder(h=28, r=1.2, $fn=100, center=false);
            }
        }




	}
}
