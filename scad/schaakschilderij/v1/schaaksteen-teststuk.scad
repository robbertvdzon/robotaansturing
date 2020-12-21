
difference(){
	union(){ 

              
            

        translate([-5, -8.5,0]){
           cube([10,17,11], center=false);
        }                
        translate([0+5,0,0]){
            rotate([0,0,0]){
                cylinder(h=11, r=8.5, $fn=100, center=false);
            }   
        }
        translate([0-5,0,0]){
            rotate([0,0,0]){
                cylinder(h=11, r=8.5, $fn=100, center=false);
            }   
        }


            



	}
	union() {
        translate([0,-7,1]){
            rotate([0,0,45]){
                cube([10,10,24], center=false);
            }
        }                

        translate([-10,-1,1]){
          cube([20,20,11], center=false);
        }                


	}
}
