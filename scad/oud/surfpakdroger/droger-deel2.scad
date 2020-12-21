
difference(){
	union(){ 

        translate([0,0,0]){
           cube([15,15,5], center=false);
        }
        translate([0,5,0]){
           cube([15,5,30], center=false);
        }
        translate([7.5,10,30]){
            rotate([90,0,0]){
                cylinder(h=5, r=7.5, $fn=100, center=false);
            }
        }
	}
	union() {
        translate([7.5,15,30]){
            rotate([90,0,0]){
                cylinder(h=20, r=1, $fn=100, center=false);
            }
        }

	}
}
