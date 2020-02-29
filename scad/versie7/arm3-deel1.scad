difference(){
	union(){
        
       translate([0,0,0]){
           cube([200,22,4], center=false);
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

       translate([5,11+6,-5]){
            rotate(a = [0,0,90]) {
              cylinder(h=600, r=1.3, $fn=100, center=false);
            }
       }	
       translate([5,11,-5]){
            rotate(a = [0,0,90]) {
              cylinder(h=600, r=1.3, $fn=100, center=false);
            }
       }	     
       translate([5,11-6,-5]){
            rotate(a = [0,0,90]) {
              cylinder(h=600, r=1.3, $fn=100, center=false);
            }
       }	


        
	}
}
