union(){

    include <arm-boven.scad>;
}
{
difference(){
	union(){
        
        translate([27,23,0]){
           cylinder(h=14, r=3, $fn=100, center=false);
        }
        translate([3,23,0]){
           cylinder(h=14, r=3, $fn=100, center=false);
        }
	}
	union() {
        translate([27,23,-10]){
            rotate(a = [0,0,0]) {
                cylinder(h=40, r=1, $fn=100, center=false);
            }
        }	
        translate([3,23,-10]){
            rotate(a = [0,0,0]) {
                cylinder(h=40, r=1, $fn=100, center=false);
            }
        }	
        

        
	}
}
}