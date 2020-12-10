
difference(){
	union(){ 

              
            

        translate([-5, -8.5,0]){
           cube([10,17,6], center=false);
        }                
        translate([0+5,0,0]){
            rotate([0,0,0]){
                cylinder(h=6, r=8.5, $fn=100, center=false);
            }   
        }
        translate([0-5,0,0]){
            rotate([0,0,0]){
                cylinder(h=6, r=8.5, $fn=100, center=false);
            }   
        }





	}
	union() {

        translate([-12, 0,2.3]){
           cube([24,14,4], center=false);
        }                

        translate([-5, -7,2.3]){
           cube([10,14,4], center=false);
        }                
        translate([0+5,0,2.3]){
            rotate([0,0,0]){
                cylinder(h=4, r=7, $fn=100, center=false);
            }   
        }
        translate([0-5,0,2.3]){
            rotate([0,0,0]){
                cylinder(h=4, r=7, $fn=100, center=false);
            }   
        }



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
