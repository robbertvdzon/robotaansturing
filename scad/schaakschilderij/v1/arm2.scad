
difference(){
	union(){ 

        translate([8,0,0]){
           cube([3,58+15,7], center=false);
        }                
        translate([3+45-8,0,0]){
           cube([3,58+15,7], center=false);
        }                
        translate([8,55+15,0]){
           cube([35,3,7], center=false);
        }                
        translate([(51/2-1.5 - (24+3)/2),58+15,0]){
           cube([3,25,3], center=false);
        }                
        translate([(51/2-1.5 + (24+3)/2),58+15,0]){
           cube([3,25,3], center=false);
        }                
        
        
        translate([(51/2-1.5 - (24+3)/2),58+15+20,0]){
           cube([3,5,10], center=false);
        }                
        translate([(51/2-1.5 + (24+3)/2),58+15+20,0]){
           cube([3,5,10], center=false);
        }                
        
	}
	union() {

        translate([0,12-6,3.5]){
            rotate([0,90,0]){
                cylinder(h=200, r=1.5, $fn=100, center=true);
            }   
        }
        translate([0,12+6,3.5]){
            rotate([0,90,0]){
                cylinder(h=200, r=1.5, $fn=100, center=true);
            }   
        }
//        translate([(51/2-3 + 24/2+3),58+25-3+15,-1]){
//            rotate([0,0,45]){
//                cube([5,5,5], center=false);
//            }
//        }                
//        translate([(51/2-3 - 24/2+3),58+25-3+15,-1]){
//            rotate([0,0,45]){
//                cube([5,5,5], center=false);
//            }
//        }                

	}
}
