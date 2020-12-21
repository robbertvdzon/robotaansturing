difference(){
	union(){
        
       translate([0,0,0]){
            rotate(a = [0,0,0]) {
                cylinder(h=20, r=7.5, $fn=100, center=true);
            }
       }		   

	}
	union() {
       translate([0,0,0]){
            rotate(a = [0,0,0]) {
                cylinder(h=600, r=1.4, $fn=100, center=true);
            }
       }			   
        translate([0,0,5]){
            rotate(a = [0,90,0]) {
                cylinder(h=600, r=1.0, $fn=100, center=true);
            }
       }      
        translate([0,0,-5]){
            rotate(a = [0,90,0]) {
                cylinder(h=600, r=1.0, $fn=100, center=true);
            }
       }      

        
	}
}