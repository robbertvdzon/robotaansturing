difference(){
	union(){
        
       translate([-20,0,0]){
           cube([94+20,41,6], center=false);
       }

       translate([-10,0,0]){
           cube([6,41,58+25], center=false);
       }
       translate([78,0,0]){
           cube([6,41,58+25], center=false);
       }
       translate([-10,41/2,58+25]){
            rotate(a = [0,90,0]) {
              cylinder(h=6, r=41/2, $fn=100, center=false);
            }
       }	
       translate([78,41/2,58+25]){
            rotate(a = [0,90,0]) {
              cylinder(h=6, r=41/2, $fn=100, center=false);
            }
       }	




	}
	union() {
 
       translate([-15,41-7,-1]){
            rotate(a = [0,0,90]) {
              cylinder(h=600, r=1, $fn=100, center=false);
            }
       }	
       translate([104-15,41-7,-1]){
            rotate(a = [0,0,90]) {
              cylinder(h=600, r=1, $fn=100, center=false);
            }
       }	
       translate([-15,7,-1]){
            rotate(a = [0,0,90]) {
              cylinder(h=600, r=1, $fn=100, center=false);
            }
       }	
       translate([104-15,7,-1]){
            rotate(a = [0,0,90]) {
              cylinder(h=600, r=1, $fn=100, center=false);
            }
       }	
       translate([-10,41/2,58+25]){
            rotate(a = [90-65,0,0]) {

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
