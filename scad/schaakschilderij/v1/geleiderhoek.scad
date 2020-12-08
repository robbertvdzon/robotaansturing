
difference(){
	union(){ 

        translate([0,0,0]){
           cube([30,30,30], center=false);
        }                

	}
	union() {
        translate([15,0,7]){
            rotate([90,0,0]){
                cylinder(h=200, r=4, $fn=100, center=true);
            }   
        }
        translate([15,15,7+8+8]){
            rotate([0,90,0]){
                cylinder(h=200, r=4, $fn=100, center=true);
            }   
        }
        translate([5,5,0]){
            rotate([0,0,90]){
                cylinder(h=200, r=1.5, $fn=100, center=true);
            }   
        }
        translate([25,25,0]){
            rotate([0,0,90]){
                cylinder(h=200, r=1.5, $fn=100, center=true);
            }   
        }
	}
}
