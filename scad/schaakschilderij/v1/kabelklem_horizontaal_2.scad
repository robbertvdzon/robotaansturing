
difference(){
	union(){ 

        translate([0,0,0]){
           cube([20,20,3], center=false);
        }                
	}
	union() {
        translate([5,4,0]){
            rotate([0,0,90]){
                cylinder(h=200, r=1.2, $fn=100, center=true);
            }   
        }
        translate([15,4,0]){
            rotate([0,0,90]){
                cylinder(h=200, r=1.2, $fn=100, center=true);
            }   
        }
        
        translate([5,16,0]){
            rotate([0,0,90]){
                cylinder(h=200, r=1.2, $fn=100, center=true);
            }   
        }
        translate([15,16,0]){
            rotate([0,0,90]){
                cylinder(h=200, r=1.2, $fn=100, center=true);
            }   
        }
	}
}
