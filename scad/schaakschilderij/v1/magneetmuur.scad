
difference(){
	union(){ 

              
            

        translate([-5, -8.5,0]){
           cube([10,17,2.3], center=false);
        }                
        translate([0+5,0,0]){
            rotate([0,0,0]){
                cylinder(h=2.3, r=8.5, $fn=100, center=false);
            }   
        }
        translate([0-5,0,0]){
            rotate([0,0,0]){
                cylinder(h=2.3, r=8.5, $fn=100, center=false);
            }   
        }





	}
	union() {


        translate([0+5,0,1]){
            rotate([0,0,0]){
                cylinder(h=5, r=3, $fn=100, center=false);
            }   
        }
        translate([0-5,0,1]){
            rotate([0,0,0]){
                cylinder(h=5, r=3, $fn=100, center=false);
            }   
        }

	}
}
