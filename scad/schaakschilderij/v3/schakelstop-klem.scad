
difference(){
	union(){

        translate([0,0,0]){
            cube([16,6,4], center=false);
        }

        

	}
	union() {

        translate([3,3,0]){
            rotate([0,0,90]){
                cylinder(h=200, r=1.5, $fn=100, center=false);
            }
        }
        translate([13,3,0]){
            rotate([0,0,90]){
                cylinder(h=200, r=1.5, $fn=100, center=false);
            }
        }


	}
}
