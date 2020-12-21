difference(){
	union(){
        
       translate([0,0,0]){
           cube([200,22,4], center=false);
       }

       translate([7.5,0,0]){
           cube([50,22,26], center=false);
       }

	}
	union() {


       translate([7.5+27/2,-1,4]){
           cube([23,30.1,27], center=false);
       }


       translate([170,-2,2]){
           cube([100,30,4], center=false);
       }
 
       translate([3,11-5,-1]){
            rotate(a = [0,0,90]) {
              cylinder(h=600, r=1.4, $fn=100, center=false);
            }
       }	
       translate([3,11+5,-1]){
            rotate(a = [0,0,90]) {
              cylinder(h=600, r=1.4, $fn=100, center=false);
            }
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



       translate([7.5+25-13,11,-1]){
            rotate(a = [0,0,90]) {
              cylinder(h=600, r=1, $fn=100, center=false);
            }
       }	
       translate([7.5+25+13,11,-1]){
            rotate(a = [0,0,90]) {
              cylinder(h=600, r=1, $fn=100, center=false);
            }
       }	
        
	}
}
