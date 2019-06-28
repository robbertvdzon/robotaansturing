union(){

    include <arm-motor-houder.scad>;
}
{
difference(){
	union(){
        
         translate([0,-3,0]){
           cube([51,3,23], center=false);
        }


	}
	union() {
         translate([-10,0,11.5]){
            rotate(a = [90,0,0]) {
                cylinder(h=600, r=2, $fn=100, center=true);
            }
       }			   
       translate([91-20-10,0,11.5]){
            rotate(a = [90,0,0]) {
                cylinder(h=600, r=2, $fn=100, center=true);
            }
       }			   



        
	}
}
}