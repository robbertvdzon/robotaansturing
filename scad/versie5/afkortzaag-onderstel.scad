difference(){
	union(){

       translate([0,0,0]){
           cube([23,95,55], center=false);
       }
       translate([0,35,55-8]){
           cube([23+15,60,8], center=false);
       }
       translate([0,0,-10]){
           cube([23,60,10], center=false);
       }
       translate([0,35,55-27-8]){
           cube([23+15,30,8], center=false);
       }

       translate([0,30,-10]){
            rotate(a = [0,90,0]) {
              cylinder(h=23, r=10, $fn=100, center=false);
            }
       }	
       translate([0,60,0]){
            rotate(a = [0,90,0]) {
              cylinder(h=23, r=10, $fn=100, center=false);
            }
       }	
	}
	union() {
       translate([-10,30,-10]){
            rotate(a = [0,90,0]) {
              cylinder(h=100, r=3.8, $fn=100, center=false);
            }
       }	        
       translate([-20,-10,55-27]){
           cube([60,75,55], center=false);
       }

       translate([33,50,-20]){
            rotate(a = [0,0,90]) {
              cylinder(h=70, r=1.5, $fn=100, center=false);
            }
       }	

       translate([12.5,7-35,-10]){
            rotate(a = [0,0,90]) {
              cylinder(h=100, r=1.5, $fn=100, center=false);
            }
       }	
       translate([33,60-7+35,-10]){
            rotate(a = [0,0,90]) {
              cylinder(h=100, r=1.5, $fn=100, center=false);
            }
       }	
       translate([33,60-7+20,-10]){
            rotate(a = [0,0,90]) {
              cylinder(h=100, r=1.5, $fn=100, center=false);
            }
       }	
       translate([50,60-7+35,-10]){
            rotate(a = [0,0,90]) {
              cylinder(h=100, r=1.5, $fn=100, center=false);
            }
       }	
       translate([50,60-7+20,-10]){
            rotate(a = [0,0,90]) {
              cylinder(h=100, r=1.5, $fn=100, center=false);
            }
       }	



        
	}
}
