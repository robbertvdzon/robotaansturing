difference(){
	union(){
        
       translate([0,0,0]){
           cube([16,40,6], center=true);
       }
	}
	union() {
        
       translate([0,0,0]){
            rotate(a = [0,0,90]) {
              cylinder(h=600, r=5.5, $fn=100, center=true);
            }
       }			   
       translate([0,0,0]){
            rotate(a = [0,0,90]) {
              cylinder(h=600, r=13.5, $fn=100, center=false);
            }
       }			   
       translate([0,17,0]){
            rotate(a = [0,0,90]) {
              cylinder(h=600, r=1, $fn=100, center=true);
            }
       }			   
       translate([0,-17,0]){
            rotate(a = [0,0,90]) {
              cylinder(h=600, r=1, $fn=100, center=true);
            }
       }			   
		   

        
	}
}