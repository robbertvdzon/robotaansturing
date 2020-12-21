difference(){
	union(){
        
       translate([0,0,0]){
           cube([42,42,4], center=false);
       }

       translate([42-10,42/2-10,0]){
           cube([10,20,10], center=false);
       }
       translate([0,42/2-10,0]){
           cube([10,20,10], center=false);
       }

 

	}
	union() {
		   
       translate([42/2,42/2,-1]){
            rotate(a = [0,0,90]) {
              cylinder(h=600, r=12.5, $fn=100, center=false);
            }
       }		   
       translate([42/2,42/2,-10]){
            rotate(a = [0,0,90]) {
              cylinder(h=600, r=3, $fn=100, center=false);
            }
       }		   

       translate([-10,42/2,5]){
            rotate(a = [0,90,0]) {
              cylinder(h=600, r=1, $fn=100, center=false);
            }
       }		   

       translate([5.5,5.5,-10]){
            rotate(a = [0,0,90]) {
              cylinder(h=600, r=1.2, $fn=100, center=false);
            }
       }		   
       translate([5.5+31,5.5,-10]){
            rotate(a = [0,0,90]) {
              cylinder(h=600, r=1.2, $fn=100, center=false);
            }
       }		   
       translate([5.5+31,5.5+31,-10]){
            rotate(a = [0,0,90]) {
              cylinder(h=600, r=1.2, $fn=100, center=false);
            }
       }		   
       translate([5.5,5.5+31,-10]){
            rotate(a = [0,0,90]) {
              cylinder(h=600, r=1.2, $fn=100, center=false);
            }
       }		   

        
	}
}