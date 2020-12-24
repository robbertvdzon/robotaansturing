
difference(){
	union(){
        translate([6,-7.5,-16]){
            cube([3,25,33], center=false);
        }

        

	}
	union() {
        translate([-20,0,0-5.5-4]){
            rotate([0,90,0]){
                color("red")
                cylinder(h=200, r=4.4, $fn=100, center=false);
            }
        }
        translate([-20,0,0+5.5+4]){
            rotate([0,90,0]){
                color("red")
                cylinder(h=200, r=4.4, $fn=100, center=false);
            }
        }


	}
}
