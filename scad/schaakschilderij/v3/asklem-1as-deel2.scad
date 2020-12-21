
difference(){
	union(){
        translate([4,0,-9]){
           cube([12.5-4,11.5,18], center=false);
        }        


	}
	union() {
        translate([0,0,-10]){
            rotate([0,0,90]){
                color("green")
                cylinder(h=20, r=7.7, $fn=100, center=false);
            }
        }
        translate([0,0,0]){
            rotate([0,90,0]){
                color("red")
                cylinder(h=200, r=4, $fn=100, center=false);
            }
        }

        translate([10,20,6.6]){
            rotate([90,0,0]){
                color("blue")
                cylinder(h=100, r=1.5, $fn=100, center=false);
            }
        }
        translate([10,20,-6.6]){
            rotate([90,0,0]){
                color("blue")
                cylinder(h=100, r=1.5, $fn=100, center=false);
            }
        }
	}
}
