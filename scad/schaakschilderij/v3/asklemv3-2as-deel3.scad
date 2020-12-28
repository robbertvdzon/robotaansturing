
difference(){
	union(){

        translate([-10.5,-7.5,-33/2-3]){
            cube([21,3,7], center=false);
        }
     


	}
	union() {
        translate([7,20,-16]){
            rotate([90,0,0]){
                color("blue")
                cylinder(h=100, r=1.5, $fn=100, center=false);
            }
        }
        translate([-7,20,-16]){
            rotate([90,0,0]){
                color("blue")
                cylinder(h=100, r=1.5, $fn=100, center=false);
            }
        }

	}
}
