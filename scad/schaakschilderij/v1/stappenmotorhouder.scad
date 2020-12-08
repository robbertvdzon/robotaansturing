
difference(){
	union(){

        translate([0,0,0]){
           cube([47,42,4], center=false);
        }
        translate([0,0,0]){
           cube([5,42,20], center=false);
        }
	}
	union() {

        translate([0,5,12]){
            rotate([0,90,0]){
                cylinder(h=200, r=1.5, $fn=100, center=true);
            }
        }
        translate([0,42-5,12]){
            rotate([0,90,0]){
                cylinder(h=200, r=1.5, $fn=100, center=true);
            }
        }

        translate([47/2+5,42/2,0]){
            rotate([0,0,90]){
                cylinder(h=200, r=12.5, $fn=100, center=true);
            }
        }
        translate([47/2+5-15,42/2-15,0]){
            rotate([0,0,90]){
                cylinder(h=200, r=1.5, $fn=100, center=true);
            }
        }
        translate([47/2+5-15,42/2+15,0]){
            rotate([0,0,90]){
                cylinder(h=200, r=1.5, $fn=100, center=true);
            }
        }
        translate([47/2+5+15,42/2-15,0]){
            rotate([0,0,90]){
                cylinder(h=200, r=1.5, $fn=100, center=true);
            }
        }
        translate([47/2+5+15,42/2+15,0]){
            rotate([0,0,90]){
                cylinder(h=200, r=1.5, $fn=100, center=true);
            }
        }

	}
}
