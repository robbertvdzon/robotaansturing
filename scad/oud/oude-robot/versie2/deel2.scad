union(){

    include <arm-motor-houder.scad>;
}
{
difference(){
	union(){
        
         translate([-4,-55,0]){
           cube([3,55,23], center=false);
        }
        
         translate([-4,-3,0]){
           cube([4,23,23], center=false);
        }
        
        translate([1.5-4,-55,11.5]){
            rotate(a = [0,90,0]) {
                cylinder(h=3, r=11.5, $fn=100, center=true);
            }
        }	



         translate([52,-55,0]){
           cube([3,55,23], center=false);
        }
        
         translate([51,-3,0]){
           cube([4,23,23], center=false);
        }

        translate([52+1.5,-55,11.5]){
            rotate(a = [0,90,0]) {
                cylinder(h=3, r=11.5, $fn=100, center=true);
            }
        }	



	}
	union() {

        translate([0,-55,11.5]){
            rotate(a = [0,90,0]) {
                cylinder(h=300, r=3.7, $fn=100, center=true);
            }
        }	


        
	}
}
}