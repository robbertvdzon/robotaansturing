difference(){
	union(){
        
       translate([-2,0,0]){
           cube([85,41,4], center=false);
       }

       translate([-6,0,0]){
           cube([4,41,48+15+18], center=false);
       }
       translate([83,0,0]){
           cube([4,41,48+15+18], center=false);
       }
       translate([-6,41/2,48+15+18]){
            rotate(a = [0,90,0]) {
              cylinder(h=4, r=41/2, $fn=100, center=false);
            }
       }	
       translate([83,41/2,48+15+18]){
            rotate(a = [0,90,0]) {
              cylinder(h=4, r=41/2, $fn=100, center=false);
            }
       }	


	}
	union() {
 
       translate([85/2-23,41/2,-1]){
            rotate(a = [0,0,90]) {
              cylinder(h=600, r=3.8, $fn=100, center=false);
            }
       }	
       translate([75/2+23,41/2,-1]){
            rotate(a = [0,0,90]) {
              cylinder(h=600, r=3.8, $fn=100, center=false);
            }
       }	
       
       translate([-10,41/2,48+15+18]){
            rotate(a = [0,90,0]) {
              cylinder(h=999, r=1.8, $fn=100, center=false);
            }
       }	




        
	}
}
