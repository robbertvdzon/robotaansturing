
difference(){
	union(){
        translate([-6,-6,0]){
            cube([17,17,12], center=false);
        }


	}
	union() {

        translate([0,0,-1]){
            rotate([0,0,0]){
                cylinder(h=14, r=4, $fn=100, center=false);
            }
        }
        translate([-30,0,5]){
            rotate([0,90,0]){
                cylinder(h=100, r=1.2, $fn=100, center=false);
            }
        }


	}
}
