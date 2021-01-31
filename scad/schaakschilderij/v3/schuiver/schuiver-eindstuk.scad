
difference(){
	union(){
        

        translate([-9.5-9,-7.5,34]){
            cube([15+9+18-6,15,9], center=false);
        }


	}
	union() {
        translate([20-6,0,14]){
            rotate([0,0,90]){
                cylinder(h=30, r=1.5, $fn=100, center=false);
            }
        }
        translate([-14,0,14]){
            rotate([0,0,90]){
                cylinder(h=30, r=1.5, $fn=100, center=false);
            }
        }


        translate([0,0,-35]){
            rotate([0,0,90]){
                cylinder(h=100, r=5.5, $fn=100, center=false);
            }
        }
        translate([-7,20,38]){
            rotate([90,0,0]){
                cylinder(h=100, r=1.5, $fn=100, center=false);
            }
        }
        translate([7,20,38]){
            rotate([90,0,0]){
                cylinder(h=100, r=1.5, $fn=100, center=false);
            }
        }

	}
}
