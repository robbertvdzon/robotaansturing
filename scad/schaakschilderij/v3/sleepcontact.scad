
difference(){
	union(){

        translate([0,0,-16.5]){
            cube([15,10,31], center=false);
        }
        translate([0,0,-16.5]){
            cube([18+75,10,2], center=false);
        }
        translate([0,0,14.5]){
            cube([18+75,10,2], center=false);
        }
        translate([15+75,0,-14.5]){
            cube([3,10,29], center=false);
        }


        translate([0,0,14.5]){
            cube([18,10,2], center=false);
        }
        translate([0,0,-16.5]){
            cube([18,10,2], center=false);
        }
        translate([0,0,-14.5]){
            cube([3,10,29], center=false);
        }
        translate([15,0,-16.5]){
            cube([3,10,33], center=false);
        }

        translate([9,19.5,0]){
            rotate([90,0,0]){
                cylinder(h=10, r=5.5, $fn=100, center=false);
            }
        }
        
        translate([20,5,-21]){
            rotate([90,0,0]){
                cylinder(h=5, r=6, $fn=100, center=false);
            }
        }

	}
	union() {
        translate([20,6,-21]){
            rotate([90,0,0]){
                cylinder(h=10, r=4, $fn=100, center=false);
            }
        }

        translate([19+71/2,5,-29.5]){
            rotate([0,0,90]){
                color("green")
                cylinder(h=50, r=1.5, $fn=100, center=false);
            }
        }

        translate([9,20,0]){
            rotate([90,0,0]){
                color("green")
                cylinder(h=500, r=1.5, $fn=100, center=false);
            }
        }
        translate([9,20,9.5]){
            rotate([90,0,0]){
                color("green")
                cylinder(h=500, r=1.5, $fn=100, center=false);
            }
        }
        translate([9,20,-9.5]){
            rotate([90,0,0]){
                color("green")
                cylinder(h=500, r=1.5, $fn=100, center=false);
            }
        }

        translate([9,20,0]){
            rotate([90,0,0]){
                color("green")
                cylinder(h=18, r=3.5, $fn=100, center=false);
            }
        }
        translate([9,20,9.5]){
            rotate([90,0,0]){
                color("green")
                cylinder(h=18, r=3.5, $fn=100, center=false);
            }
        }
        translate([9,20,-9.5]){
            rotate([90,0,0]){
                color("green")
                cylinder(h=18, r=3.5, $fn=100, center=false);
            }
        }


	}
}
