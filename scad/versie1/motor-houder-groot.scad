difference(){
	union(){
        
       translate([0,0,0]){
            rotate(a = [0,0,0]) {
                cylinder(h=20, r=9.25, $fn=100, center=true);
            }
       }
	}
	union() {
        
       translate([0,0,0]){
           cube([11,13,100], center=true);
       }
       translate([0,0,0]){
            rotate(a = [0,90,0]) {
                cylinder(h=600, r=1, $fn=100, center=true);
            }
       }			   
       translate([0,0,0]){
            rotate(a = [90,0,0]) {
                cylinder(h=600, r=1, $fn=100, center=true);
            }
       }			   

        
	}
}