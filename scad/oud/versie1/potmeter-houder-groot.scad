difference(){
	union(){
        
       translate([0,0,0]){
            rotate(a = [0,0,0]) {
                cylinder(h=12, r=11.25, $fn=100, center=false);
            }
       }
	}
	union() {
        
       translate([-7.7,-13.5/2,-2]){
           cube([27,13.5,22.5], center=false);
       }
       translate([0,0,12.5/2]){
            rotate(a = [0,90,0]) {
                cylinder(h=600, r=4, $fn=100, center=true);
            }
       }			   

        
	}
}