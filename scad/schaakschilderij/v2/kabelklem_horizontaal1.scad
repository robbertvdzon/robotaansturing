
difference(){
	union(){ 

        translate([0,9.5,0]){
           cube([19,24,12], center=false);
        }                
        
        translate([9.5,10,6]){
            rotate([0,90,0]){
                cylinder(h=19, r=6, $fn=100, center=true);
            }   
        }
        translate([9.5,10+8+15,6]){
            rotate([0,90,0]){
                cylinder(h=19, r=6, $fn=100, center=true);
            }   
        }

	}
	union() {
        translate([0,10,6]){
            rotate([0,90,0]){
                cylinder(h=200, r=4, $fn=100, center=true);
            }   
        }
        translate([0,10+8+15,6]){
            rotate([0,90,0]){
                cylinder(h=200, r=4, $fn=100, center=true);
            }   
        }
        translate([5,17,0]){
            rotate([0,0,90]){
                cylinder(h=200, r=1.5, $fn=100, center=true);
            }   
        }
        translate([14,17,0]){
            rotate([0,0,90]){
                cylinder(h=200, r=1.5, $fn=100, center=true);
            }   
        }
        
        translate([5,26,0]){
            rotate([0,0,90]){
                cylinder(h=200, r=1.5, $fn=100, center=true);
            }   
        }
        translate([14,26,0]){
            rotate([0,0,90]){
                cylinder(h=200, r=1.5, $fn=100, center=true);
            }   
        }
        
	}
}
