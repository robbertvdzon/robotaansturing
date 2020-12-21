
difference(){
	union(){

        translate([-9.5,-7.5,-14.5]){
            cube([19,3,29], center=false);
        }

        
        

	}
	union() {

        translate([7,20,5]){
            rotate([90,0,0]){
                color("blue")
                cylinder(h=100, r=1.5, $fn=100, center=false);
            }
        }
        translate([7,20,-5]){
            rotate([90,0,0]){
                color("blue")
                cylinder(h=100, r=1.5, $fn=100, center=false);
            }
        }
        translate([-7,20,0]){
            rotate([90,0,0]){
                cylinder(h=100, r=1.5, $fn=100, center=false);
            }
        }

	}
}
