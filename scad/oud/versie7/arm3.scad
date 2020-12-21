difference(){
	union(){
        
       translate([0,0,0]){
           cube([72,20,4], center=false);
       }

       translate([0,0,0]){
           cube([4,20,35+18], center=false);
       }
       translate([72-4,0,0]){
           cube([4,20,35+18], center=false);
       }

       
	
	}
	union() {

       translate([72/2+11,10,-2]){
            rotate(a = [0,0,90]) {
              cylinder(h=600, r=1.2, $fn=100, center=false);
            }
       }	
       translate([72/2-11,10,-2]){
            rotate(a = [0,0,90]) {
              cylinder(h=600, r=1.2, $fn=100, center=false);
            }
       }	
       
       

       translate([3,10,35+13]){
            rotate(a = [0,90,0]) {
              cylinder(h=2, r=4, $fn=100, center=false);
            }
       }	      
       translate([-1,10,35+13]){
            rotate(a = [0,90,0]) {
              cylinder(h=100, r=1.3, $fn=100, center=false);
            }
       }	      
       translate([-1,10,35+13-30.5]){
            rotate(a = [0,90,0]) {
              cylinder(h=100, r=1.3, $fn=100, center=false);
            }
       }	      

	}
}
