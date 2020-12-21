difference(){
	union(){
        
       translate([0,0,0]){
           cube([74,41,15], center=false);
       }


	}
	union() {
       translate([74/2,41/2,-1]){
            rotate(a = [0,0,90]) {
              cylinder(h=600, r=4, $fn=100, center=false);
            }
       }	
 
       translate([74/2-23,41/2,-1]){
            rotate(a = [0,0,90]) {
              cylinder(h=600, r=3.8, $fn=100, center=false);
            }
       }	
       translate([74/2+23,41/2,-1]){
            rotate(a = [0,0,90]) {
              cylinder(h=600, r=3.8, $fn=100, center=false);
            }
       }	
       
       
       
       translate([74/2,41/2-16,-10]){
            rotate(a = [0,0,90]) {
              cylinder(h=600, r=2.8, $fn=100, center=false);
            }
       }		   
       translate([74/2,41/2+16,-10]){
            rotate(a = [0,0,90]) {
              cylinder(h=600, r=2.8, $fn=100, center=false);
            }
       }



       translate([-10,41/2+6,7.5]){
            rotate(a = [0,90,0]) {
              cylinder(h=600, r=1.8, $fn=100, center=false);
            }
       }	
       translate([-10,41/2-6,7.5]){
            rotate(a = [0,90,0]) {
              cylinder(h=600, r=1.8, $fn=100, center=false);
            }
       }	

        
	}
}
