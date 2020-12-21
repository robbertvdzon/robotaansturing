difference(){
	union(){
        
       translate([-2,0,0]){
           cube([78,41,6], center=false);
       }

       translate([-8,0,0]){
           cube([6,41,58], center=false);
       }
       translate([76,0,0]){
           cube([6,41,58], center=false);
       }
       translate([-8,41/2,58]){
            rotate(a = [0,90,0]) {
              cylinder(h=6, r=41/2, $fn=100, center=false);
            }
       }	
       translate([76,41/2,58]){
            rotate(a = [0,90,0]) {
              cylinder(h=6, r=41/2, $fn=100, center=false);
            }
       }	




	}
	union() {
 
       translate([74/2-23,41-7,-1]){
            rotate(a = [0,0,90]) {
              cylinder(h=600, r=1, $fn=100, center=false);
            }
       }	
       translate([74/2+23,41-7,-1]){
            rotate(a = [0,0,90]) {
              cylinder(h=600, r=1, $fn=100, center=false);
            }
       }	
       translate([74/2-23,7,-1]){
            rotate(a = [0,0,90]) {
              cylinder(h=600, r=1, $fn=100, center=false);
            }
       }	
       translate([74/2+23,7,-1]){
            rotate(a = [0,0,90]) {
              cylinder(h=600, r=1, $fn=100, center=false);
            }
       }	
       translate([-10,41/2,58]){
            rotate(a = [90-55,0,0]) {

                union() {
                   translate([0,6,0]){
                        rotate(a = [0,90,0]) {
                          cylinder(h=600, r=1.8, $fn=100, center=false);
                        }
                   }	
                   translate([0,-6,0]){
                        rotate(a = [0,90,0]) {
                          cylinder(h=600, r=1.8, $fn=100, center=false);
                        }
                   }	
               }
           }
       }

        
	}
}
