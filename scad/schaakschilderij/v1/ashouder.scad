
difference(){
	union(){

        translate([0,0,0]){
           cube([42,45,4], center=false);
        }
        translate([0,0,0]){
           cube([5,45,20], center=false);
        }
	}
	union() {

        translate([0,5,12]){
            rotate([0,90,0]){
                cylinder(h=200, r=1.5, $fn=100, center=true);
            }
        }
        translate([0,45-5,12]){
            rotate([0,90,0]){
                cylinder(h=200, r=1.5, $fn=100, center=true);
            }
        }

        translate([47/2+5,45/2,0]){
            rotate([0,0,90]){
                cylinder(h=200, r=5, $fn=100, center=true);
            }
        }

        translate([47/2+5,45/2-18.5,0]){
            rotate([0,0,90]){
                cylinder(h=200, r=1.5, $fn=100, center=true);
            }
        }
        translate([47/2+5,45/2+18.5,0]){
            rotate([0,0,90]){
                cylinder(h=200, r=1.5, $fn=100, center=true);
            }
        }

	}
}
