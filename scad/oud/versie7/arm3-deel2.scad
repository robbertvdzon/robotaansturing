difference(){
	union(){
        
       translate([0,0,0]){
           cube([50,20,4], center=false);
       }

       translate([25-4-5.5,0,0]){
           cube([4,20,30], center=false);
       }
       translate([25+5.5,0,0]){
           cube([4,20,30], center=false);
       }

       translate([30.5,0,0]){
           cube([10,4,70], center=false);
       }
       translate([30.5,16,0]){
           cube([10,4,70], center=false);
       }
       translate([25-10-5.5,0,0]){
           cube([10,4,70], center=false);
       }
       translate([25-10-5.5,16,0]){
           cube([10,4,70], center=false);
       }
	
	}
	union() {

       translate([25,10,-2]){
            rotate(a = [0,0,90]) {
              cylinder(h=600, r=4, $fn=100, center=false);
            }
       }	
       translate([25+11,10,-2]){
            rotate(a = [0,0,90]) {
              cylinder(h=600, r=1.2, $fn=100, center=false);
            }
       }	
       translate([25-11,10,-2]){
            rotate(a = [0,0,90]) {
              cylinder(h=600, r=1.2, $fn=100, center=false);
            }
       }	
       
       
       translate([-4,10,4+8]){
            rotate(a = [0,90,0]) {
              cylinder(h=600, r=1.2, $fn=100, center=false);
            }
       }	
       translate([-4,10,4+8+9.8]){
            rotate(a = [0,90,0]) {
              cylinder(h=600, r=1.2, $fn=100, center=false);
            }
       }	

       translate([14.5,30,65]){
            rotate(a = [90,0,0]) {
              cylinder(h=600, r=1.3, $fn=100, center=false);
            }
       }       
       translate([35.5,30,65]){
            rotate(a = [90,0,0]) {
              cylinder(h=600, r=1.3, $fn=100, center=false);
            }
       }       

       
	}
}
