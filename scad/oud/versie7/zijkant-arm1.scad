lengte = 150;
difference(){
	union(){
        
       translate([0,0,0]){
           cube([lengte,30,4], center=false);
       }

       translate([5,15,0]){
            rotate(a = [0,0,90]) {
              cylinder(h=5, r=3, $fn=100, center=false);
            }
       }

	}
	union() {

       translate([lengte-20,-10,2]){
           cube([30,50,4], center=false);
       }


       translate([5,15-8,-2]){
            rotate(a = [0,0,90]) {
              cylinder(h=7, r=1.8, $fn=100, center=false);
            }
       }	
       translate([5,15,-2]){
            rotate(a = [0,0,90]) {
              cylinder(h=600, r=1.8, $fn=100, center=false);
            }
       }	
       translate([5,15+8,-2]){
            rotate(a = [0,0,90]) {
              cylinder(h=600, r=1.8, $fn=100, center=false);
            }
       }	

       translate([5,15+8,1]){
            rotate(a = [0,0,90]) {
              cylinder(h=3.1, r1=1.8, r2=4, $fn=100, center=false);
            }
       }	

       translate([5,15-8,1]){
            rotate(a = [0,0,90]) {
              cylinder(h=3.1, r1=1.8, r2=4, $fn=100, center=false);
            }
       }	



       translate([lengte-10,15-8,-2]){
            rotate(a = [0,0,90]) {
              cylinder(h=600, r=1.8, $fn=100, center=false);
            }
       }	
       translate([lengte-10,15+8,-2]){
            rotate(a = [0,0,90]) {
              cylinder(h=600, r=1.8, $fn=100, center=false);
            }
       }	


        
	}
}
