
difference(){
	union(){ 

        translate([0,0,8]){
           cube([15,5,120-8], center=false);
        }        
        translate([-13+8,0,0]){
           cube([20-8,5,8], center=false);
        }        
        translate([-13,0,8]){
           cube([3,5,4], center=false);
        }        
        translate([-5,5,8]){
            rotate([90,0,0]){
                cylinder(h=5, r=8, $fn=100, center=false);
            }
        }
        translate([7,5,8]){
            rotate([90,0,0]){
                cylinder(h=5, r=8, $fn=100, center=false);
            }
        }

	}
	union() {
        translate([-10,-1,8]){
           cube([10,7,14], center=false);
        }        
        translate([-20,-1,12]){
           cube([20,7,14], center=false);
        }        
        translate([7.5,7,120-8]){
            rotate([90,0,0]){
                cylinder(h=20, r=1.5, $fn=100, center=false);
            }
        }
        translate([4,7,70]){
            rotate([90,0,0]){
                cylinder(h=20, r=1.5, $fn=100, center=false);
            }
        }
        translate([11,7,70]){
            rotate([90,0,0]){
                cylinder(h=20, r=1.5, $fn=100, center=false);
            }
        }
        translate([-5,8,8]){
            rotate([90,0,0]){
                cylinder(h=20, r=5, $fn=100, center=false);
            }
        }

	}
}
