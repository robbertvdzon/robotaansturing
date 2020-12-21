
difference(){
	union(){ 

        translate([0,9.5,12]){
           cube([19,24,2], center=false);
        }                
        
        translate([9.5,10,6]){
            rotate([0,90,0]){
                cylinder(h=19, r=8, $fn=100, center=true);
            }   
        }
        translate([9.5,10+8+15,6]){
            rotate([0,90,0]){
                cylinder(h=19, r=8, $fn=100, center=true);
            }   
        }

	}
	union() {
        translate([-1,9.5,2]){
           cube([21,24,10], center=false);
        }                
        translate([-1,-1,-20+8]){
           cube([50,50,20], center=false);
        }                
        
        translate([9.5,10,6]){
            rotate([0,90,0]){
                cylinder(h=190, r=6, $fn=100, center=true);
            }   
        }
        translate([9.5,10+8+15,6]){
            rotate([0,90,0]){
                cylinder(h=190, r=6, $fn=100, center=true);
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
