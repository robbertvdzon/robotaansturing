
difference(){
	union(){ 

        translate([8,0,0]){
           cube([3,58+15,7], center=false);
        }                
        translate([3+45-8,0,0]){
           cube([3,58+15,7], center=false);
        }                
        translate([3,55+15,0]){
           cube([45,3,7], center=false);
        }                
        translate([3+7.5,58+15,0]){
           cube([30,17,3], center=false);
        }                
        translate([3+7.5+25/2-1-3.5+7,58+15+10-5,3]){
            rotate([0,0,45]){
                cube([10,10,10], center=false);
            }
        }                
            
        
	}
	union() {
        translate([3+7.5+25/2-1-3.5-5,58+15+10,3]){
           cube([24,25,13], center=false);
        }                

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
