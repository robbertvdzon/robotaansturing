
difference(){
	union(){ 

        translate([5,2.5,0]){
           cube([25,25,10], center=false);
        }                
        translate([17.5,15-15,5]){
            rotate([0,0,90]){
                cylinder(h=10, r=6, $fn=100, center=true);
            }   
        }
        translate([17.5,15+15,5]){
            rotate([0,0,90]){
                cylinder(h=10, r=6, $fn=100, center=true);
            }   
        }
        
        translate([5.25,5.25,5]){
            rotate([0,0,90]){
                cylinder(h=10, r=3.5, $fn=100, center=true);
            }   
        }
        translate([5.25,30-5.25,5]){
            rotate([0,0,90]){
                cylinder(h=10, r=3.5, $fn=100, center=true);
            }   
        }
        translate([35-5.25,5.25,5]){
            rotate([0,0,90]){
                cylinder(h=10, r=3.5, $fn=100, center=true);
            }   
        }
        translate([35-5.25,30-5.25,5]){
            rotate([0,0,90]){
                cylinder(h=10, r=3.5, $fn=100, center=true);
            }   
        }
        
        
	}
	union() {
        translate([17.5,15-15,15]){
            rotate([0,0,90]){
                cylinder(h=200, r=4, $fn=100, center=true);
            }   
        }
        translate([17.5,15+15,15]){
            rotate([0,0,90]){
                cylinder(h=200, r=4, $fn=100, center=true);
            }   
        }
        translate([5.25,5.25,0]){
            rotate([0,0,90]){
                cylinder(h=200, r=1.5, $fn=100, center=true);
            }   
        }
        translate([5.25,30-5.25,0]){
            rotate([0,0,90]){
                cylinder(h=200, r=1.5, $fn=100, center=true);
            }   
        }
        translate([35-5.25,5.25,0]){
            rotate([0,0,90]){
                cylinder(h=200, r=1.5, $fn=100, center=true);
            }   
        }
        translate([35-5.25,30-5.25,0]){
            rotate([0,0,90]){
                cylinder(h=200, r=1.5, $fn=100, center=true);
            }   
        }
	}
}
