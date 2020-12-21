difference(){
	union(){
        
       translate([0,0,0]){
            rotate(a = [0,0,0]) {
                cylinder(h=10, r=9.5, $fn=100, center=true);
            }
       }		   

	}
	union() {
       translate([0,0,0]){
            rotate(a = [0,0,0]) {
                cylinder(h=600, r=6.7, $fn=100, center=true);
            }
       }			   
        translate([0,0,0]){
            rotate(a = [0,90,0]) {
                cylinder(h=600, r=1.0, $fn=100, center=true);
            }
       }      

        
	}
}