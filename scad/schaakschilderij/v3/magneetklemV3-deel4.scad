
difference(){
	union(){
        translate([-5,-3.5,6]){
           cube([10,7,3], center=false);
        }
        translate([-15,-3.5,3]){
           cube([30,7,3], center=false);
        }
 
	}
	union() {
        translate([0,0,-1]){
            rotate([0,0,0]){
                cylinder(h=20, r=2, $fn=100, center=false);
            }
        }


	}
}
