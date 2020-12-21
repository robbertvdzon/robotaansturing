
difference(){
	union(){
        translate([0,0,0]){
            rotate([0,0,0]){
                cylinder(h=10, r=10, $fn=100, center=false);
            }
        }


	}
	union() {

        translate([0,0,-1]){
            rotate([0,0,0]){
                cylinder(h=12, r=4, $fn=100, center=false);
            }
        }
        translate([-30,0,5]){
            rotate([0,90,0]){
                cylinder(h=100, r=1.2, $fn=100, center=false);
            }
        }


	}
}
