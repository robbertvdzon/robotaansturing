lengte = 210;
difference(){
	union(){
        
       translate([0,0,0]){
           cube([lengte,30,4], center=false);
       }


	}
	union() {

       translate([lengte-20,-10,2]){
           cube([30,50,4], center=false);
       }


       translate([5,15,-2]){
            rotate(a = [0,0,90]) {
              cylinder(h=600, r=1.8, $fn=100, center=false);
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
