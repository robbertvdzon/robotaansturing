difference(){
	union(){
        
       translate([0,0,0]){
            rotate(a = [0,0,0]) {
                cylinder(h=20, r=9.5, $fn=100, center=false);
            }
       }		   
       translate([13+22,0,0]){
            rotate(a = [0,0,0]) {
                cylinder(h=20, r=9.5, $fn=100, center=false);
            }
       }		   
        translate([-10,-24.5,0]){
           cube([55,49,4], center=false);
        }	   

	}
	union() {
       translate([0,0,-10]){
            rotate(a = [0,0,0]) {
                cylinder(h=600, r=6.7, $fn=100, center=false);
            }
       }			   
       translate([13+22,0,-10]){
            rotate(a = [0,0,0]) {
                cylinder(h=600, r=6.7, $fn=100, center=false);
            }
       }			   

        
	}
}