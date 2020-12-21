difference(){
	union(){
        
       translate([0,0,0]){
           cube([16,40,5], center=true);
       }
	}
	union() {
        
       translate([0,0,0]){
            rotate(a = [0,0,90]) {
              cylinder(h=600, r=5, $fn=100, center=true);
            }
       }			   
       translate([0,0,0]){
            rotate(a = [0,0,90]) {
              cylinder(h=600, r=10, $fn=100, center=false);
            }
       }			   
       translate([0,15,0]){
            rotate(a = [0,0,90]) {
              cylinder(h=600, r=1, $fn=100, center=true);
            }
       }			   
       translate([0,-15,0]){
            rotate(a = [0,0,90]) {
              cylinder(h=600, r=1, $fn=100, center=true);
            }
       }			   
		   

        
	}
}