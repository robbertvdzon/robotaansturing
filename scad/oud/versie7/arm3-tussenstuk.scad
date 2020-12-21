difference(){
	union(){
        
       translate([0,0,0]){
           cube([8,22,70-4], center=false);
       }

	}
	union() {

       translate([4,11-5,-1]){
            rotate(a = [0,0,90]) {
              cylinder(h=600, r=1.4, $fn=100, center=false);
            }
       }	
       translate([4,11+5,-1]){
            rotate(a = [0,0,90]) {
              cylinder(h=600, r=1.4, $fn=100, center=false);
            }
       }	

        
	}
}
