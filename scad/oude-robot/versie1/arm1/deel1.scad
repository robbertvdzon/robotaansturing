union(){

    include <arm-motor-houder.scad>;
}
{
difference(){
	union(){
        
        translate([-8,-3,0]){
           cube([57,3,15], center=false);
        }

	}
	union() {
         translate([-4,0,7.5]){
            rotate(a = [90,0,0]) {
                cylinder(h=600, r=1, $fn=100, center=true);
            }
       }			   
       translate([57-4-8,0,7.5]){
            rotate(a = [90,0,0]) {
                cylinder(h=600, r=1, $fn=100, center=true);
            }
       }			   

        
	}
}
}