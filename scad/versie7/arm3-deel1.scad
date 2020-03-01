difference(){
	union(){
        
       translate([0,0,0]){
           cube([200,22,4], center=false);
       }
       translate([0,-2,0]){
           cube([10,26,4], center=false);
       }
       translate([5,11,0]){
            rotate(a = [0,0,90]) {
              cylinder(h=5, r=4, $fn=100, center=false);
            }
       }	     


	}
	union() {

        translate([170,-2,2]){
           cube([100,30,4], center=false);
       }
       translate([185,11-5,-1]){
            rotate(a = [0,0,90]) {
              cylinder(h=600, r=1.4, $fn=100, center=false);
            }
       }	
       translate([185,11+5,-1]){
            rotate(a = [0,0,90]) {
              cylinder(h=600, r=1.4, $fn=100, center=false);
            }
       }	
       
       

       translate([5,11+8,1]){
            rotate(a = [0,0,90]) {
              cylinder(h=3.1, r1=1.8, r2=4.5, $fn=100, center=false);
            }
       }	

       translate([5,11-8,1]){
            rotate(a = [0,0,90]) {
              cylinder(h=3.1, r1=1.8, r2=4.5, $fn=100, center=false);
            }
       }	       

       translate([5,11+8,-5]){
            rotate(a = [0,0,90]) {
              cylinder(h=600, r=2, $fn=100, center=false);
            }
       }	
       translate([5,11,-5]){
            rotate(a = [0,0,90]) {
              cylinder(h=600, r=2, $fn=100, center=false);
            }
       }	     
       translate([5,11-8,-5]){
            rotate(a = [0,0,90]) {
              cylinder(h=600, r=2, $fn=100, center=false);
            }
       }	


        
	}
}
