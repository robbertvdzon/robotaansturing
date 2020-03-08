difference(){
	union(){
        
       translate([0,0,0]){
           cube([57,20,4], center=false);
       }

       translate([0,0,0]){
           cube([4,20,35+18], center=false);
       }
       translate([57-4,0,0]){
           cube([4,20,35+18], center=false);
       }

       
	
	}
	union() {

       translate([57/2,10,-2]){
            rotate(a = [0,0,90]) {
              cylinder(h=600, r=4, $fn=100, center=false);
            }
       }	
       translate([57/2+11,10,-2]){
            rotate(a = [0,0,90]) {
              cylinder(h=600, r=1.2, $fn=100, center=false);
            }
       }	
       translate([57/2-11,10,-2]){
            rotate(a = [0,0,90]) {
              cylinder(h=600, r=1.2, $fn=100, center=false);
            }
       }	
       
       
       translate([-4,10,35]){
            rotate(a = [0,90,0]) {
              cylinder(h=600, r=1.2, $fn=100, center=false);
            }
       }	
       translate([-4,10,35+12.5]){
            rotate(a = [0,90,0]) {
              cylinder(h=600, r=1.2, $fn=100, center=false);
            }
       }	
       translate([-4,10,35-12.5]){
            rotate(a = [0,90,0]) {
              cylinder(h=600, r=1.2, $fn=100, center=false);
            }
       }	
	
        translate([-4,10,35]){
            rotate(a = [0,90,0]) {
              cylinder(h=10, r=4, $fn=100, center=false);
            }
       }	      
	}
}
