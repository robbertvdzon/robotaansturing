union(){

    include <arm-motor-houder.scad>;
}
{
difference(){
	union(){
        
        translate([-20,-3,0]){
           cube([91,3,33], center=false);
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

        // uitsparing ronding
         translate([25,0,623]){
            rotate(a = [90,0,0]) {
                cylinder(h=40, r=600, $fn=300, center=true);
            }
        }

        
	}
}
}