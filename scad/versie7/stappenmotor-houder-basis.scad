difference(){
	union(){
        
       translate([0,0,0]){
           cube([74,55,14], center=false);
       }
	}
	union() {
        
       translate([74/2,41/2+7,10]){
            rotate(a = [0,0,90]) {
              cylinder(h=600, r=21, $fn=100, center=false);
            }
       }	
        
       translate([74/2,41/2+7,-1]){
            rotate(a = [0,0,90]) {
              cylinder(h=600, r=4, $fn=100, center=false);
            }
       }	
 
       translate([74/2-23,41/2+7,-2]){
            rotate(a = [0,0,90]) {
              cylinder(h=600, r=4, $fn=100, center=false);
            }
       }	
       translate([74/2+23,41/2+7,-2]){
            rotate(a = [0,0,90]) {
              cylinder(h=600, r=4, $fn=100, center=false);
            }
       }	
       
       
       
       translate([74/2-47/2,55/2-47/2,-10]){
            rotate(a = [0,0,90]) {
              cylinder(h=600, r=2.5, $fn=100, center=false);
            }
       }		   
       translate([74/2+47/2,55/2-47/2,-10]){
            rotate(a = [0,0,90]) {
              cylinder(h=600, r=2.5, $fn=100, center=false);
            }
       }		   
       translate([74/2-47/2,55/2+47/2,-10]){
            rotate(a = [0,0,90]) {
              cylinder(h=600, r=2.5, $fn=100, center=false);
            }
       }		   
       translate([74/2+47/2,55/2+47/2,-10]){
            rotate(a = [0,0,90]) {
              cylinder(h=600, r=2.5, $fn=100, center=false);
            }
       }



       translate([-10,41/2+6+7,7.5]){
            rotate(a = [0,90,0]) {
              cylinder(h=600, r=1.8, $fn=100, center=false);
            }
       }	
       translate([-10,41/2-6+7,7.5]){
            rotate(a = [0,90,0]) {
              cylinder(h=600, r=1.8, $fn=100, center=false);
            }
       }	
	}
}
