
difference(){
	union(){
        translate([-15,24,0]){
            cube([45,6,2], center=false);
        }


        translate([-15,-20,0]){
            cube([45,20,2], center=false);
        }
        translate([10,-20,0]){
            cube([6,38,2], center=false);
        }
        translate([10,-1,0]){
            cube([6,3,13+11], center=false);
        }
        translate([10,16,0]){
            cube([6,5,13+11], center=false);
        }
        translate([0,-20,0]){
            cube([10,20,12+11], center=false);
        }

        
        translate([-10,-15,0]){
            rotate([0,0,90]){
                cylinder(h=6, r=5, $fn=100, center=false);
            }
        }
        translate([25,-15,0]){
            rotate([0,0,90]){
                cylinder(h=6, r=5, $fn=100, center=false);
            }
        }

	}
	union() {
        translate([-10,-15,-1]){
            rotate([0,0,90]){
                cylinder(h=60, r=1.2, $fn=100, center=false);
            }
        }
        translate([25,-15,-1]){
            rotate([0,0,90]){
                cylinder(h=60, r=1.2, $fn=100, center=false);
            }
        }


        translate([13,30,10+11]){
            rotate([90,0,0]){
                cylinder(h=2000, r=1.2, $fn=100, center=false);
            }
        }
        translate([25,-5,-1]){
            rotate([0,0,90]){
                cylinder(h=200, r=1.5, $fn=100, center=false);
            }
        }
        translate([-10,-5,-1]){
            rotate([0,0,90]){
                cylinder(h=200, r=1.5, $fn=100, center=false);
            }
        }


        translate([25,27,-1]){
            rotate([0,0,90]){
                cylinder(h=200, r=1.5, $fn=100, center=false);
            }
        }
        translate([-10,27,-1]){
            rotate([0,0,90]){
                cylinder(h=200, r=1.5, $fn=100, center=false);
            }
        }


	}
}
