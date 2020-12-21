difference(){
	union(){
        
        translate([0,0,0]){
           cube([15,25,4], center=false);
        }
       translate([7.5,12.5,4]){
            rotate(a = [0,0,0]) {
                cylinder(h=7, r=1.0, $fn=100, center=true);
            }
       }			   
		   

	}
	union() {
       translate([7.5,3.5,0]){
            rotate(a = [0,0,0]) {
                cylinder(h=600, r=1.0, $fn=100, center=true);
            }
       }			   
       translate([7.5,21.5,0]){
            rotate(a = [0,0,0]) {
                cylinder(h=600, r=1.0, $fn=100, center=true);
            }
       }			   

        
	}
}