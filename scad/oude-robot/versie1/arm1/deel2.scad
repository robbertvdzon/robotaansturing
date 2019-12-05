union(){

    include <arm-motor-houder.scad>;
}
{
difference(){
	union(){
        translate([-3,-75,0]){
          cube([3,85,15], center=false);
        }      
        translate([41,-75,0]){
          cube([3,85,15], center=false);
        }      
        
	}
	union() {
       translate([0,-68,7.5]){
            rotate(a = [0,90,0]) {
                cylinder(h=600, r=3.5, $fn=100, center=true);
            }
       }	
        
	}
}
}