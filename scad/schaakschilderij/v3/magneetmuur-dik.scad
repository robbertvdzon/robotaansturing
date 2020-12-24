
difference(){
	union(){ 

              
            

        translate([-32.5, -32.5,0]){
           cube([65,65,2.8], center=false);
        }                


        translate([0,10,0]){
            rotate([0,0,0]){
                cylinder(h=1.8, r=8, $fn=100, center=false);
            }   
        }



	}
	union() {

        translate([+10,20,0.5]){
            rotate([0,0,0]){
                cylinder(h=5, r=3, $fn=100, center=false);
            }   
        }
        translate([-10,20,0.5]){
            rotate([0,0,0]){
                cylinder(h=5, r=3, $fn=100, center=false);
            }   
        }
        translate([0,10,0.5]){
            rotate([0,0,0]){
                cylinder(h=5, r=3, $fn=100, center=false);
            }   
        }

	}
}
