difference(){
	union(){

       translate([0,0,0]){
           cube([100,10,5], center=true);
       }
       translate([-55,-45/2+5,0]){
           cube([10,45,5], center=true);
       }

	
	}
	union() {

       translate([90/2,0,-10]){
            rotate(a = [0,0,90]) {
              cylinder(h=100, r=1.3, $fn=100, center=false);
            }
       }	
       translate([-90/2-10,-35,-10]){
            rotate(a = [0,0,90]) {
              cylinder(h=100, r=1.3, $fn=100, center=false);
            }
       }        
	}
}
