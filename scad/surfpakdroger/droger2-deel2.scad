
difference(){
	union(){ 

        translate([0,0,0]){
           cube([42+6,123,13], center=false);
        }
        

	}
	union() {
        translate([3,3,3]){
           cube([42,123-6,30], center=false);
        }
        translate([48/2-3.5,200,8]){
            rotate([90,0,0]){
                cylinder(h=2000, r=1.2, $fn=100, center=false);
            }
        }
        translate([48/2+3.5,200,8]){
            rotate([90,0,0]){
                cylinder(h=2000, r=1.2, $fn=100, center=false);
            }
        }
	}
}
