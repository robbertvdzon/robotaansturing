
difference(){
	union(){

        translate([-9,-7.5,12.5+2]){
            cube([15,25,2], center=false);
        }
        translate([-9,-7.5,-9.5-5-2]){
            cube([15,25,2], center=false);
        }
        translate([-9,-7.5,-14.5]){
            cube([3,25,29], center=false);
        }
        translate([6,-7.5,-9.5-5-2]){
            cube([3,25,33], center=false);
        }

        

	}
	union() {
        translate([0,0+8+3,-25]){
            rotate([0,0,90]){
                color("green")
                cylinder(h=50, r=4.4, $fn=100, center=false);
            }
        }
        translate([-20,0,0-9.5]){
            rotate([0,90,0]){
                color("red")
                cylinder(h=200, r=4.4, $fn=100, center=false);
            }
        }
        translate([-20,0,0+9.5]){
            rotate([0,90,0]){
                color("red")
                cylinder(h=200, r=4.4, $fn=100, center=false);
            }
        }


	}
}
