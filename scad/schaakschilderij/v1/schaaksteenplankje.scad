
difference(){
	union(){ 

        translate([-5,10,0]){
           cube([10,10,6], center=false);
        }                
        translate([-5,0,0]){
           cube([10,20,3], center=false);
        }                
        translate([-5, -5,0]){
           cube([10,10,3], center=false);
        }                

        translate([0+5,0,0]){
            rotate([0,0,0]){
                cylinder(h=3, r=5, $fn=100, center=false);
            }   
        }
        translate([0-5,0,0]){
            rotate([0,0,0]){
                cylinder(h=3, r=5, $fn=100, center=false);
            }   
        }


	}
	union() {
        translate([0,25,3]){
            rotate([90,0,0]){
                cylinder(h=20, r=1.3, $fn=100, center=false);
            }   
        }

        translate([0+5,0,1.7]){
            rotate([0,0,0]){
                cylinder(h=5, r=3, $fn=100, center=false);
            }   
        }
        translate([0-5,0,1.7]){
            rotate([0,0,0]){
                cylinder(h=5, r=3, $fn=100, center=false);
            }   
        }

	}
}
