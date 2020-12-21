
difference(){
	union(){ 

        translate([0,0,0]){
           cube([50,40,2], center=false);
        }                

	}
	union() {
        translate([15,5,1.1]){
            rotate([0,0,90]){
                cylinder(h=2.21, r1=1.5, r2=2.5, $fn=100, center=true);
            }   
        }
        translate([35,5,1.1]){
            rotate([0,0,90]){
                cylinder(h=2.21, r1=1.5, r2=2.5, $fn=100, center=true);
            }   
        }
        
        translate([15,35,1.1]){
            rotate([0,0,90]){
                cylinder(h=2.21, r1=1.5, r2=2.5, $fn=100, center=true);
            }   
        }
        translate([35,35,1.1]){
            rotate([0,0,90]){
                cylinder(h=2.21, r1=1.5, r2=2.5, $fn=100, center=true);
            }   
        }
        
	}
}
