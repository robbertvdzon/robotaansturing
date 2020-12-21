
difference(){
	union(){

        translate([-9,-7.5,11.5]){
            cube([15,25,3], center=false);
        }
        translate([-9,-7.5,-9.5-4]){
            cube([15,25,3], center=false);
        }
        translate([-9,-7.5,-10.5]){
            cube([3,25,25], center=false);
        }
        translate([6,-7.5,-9.5-4]){
            cube([3,25,28], center=false);
        }

        

	}
	union() {
/*
        translate([0,11,0]){
            for (hoek =[0:45:360])
            rotate([0,0,hoek]){
                translate([-1,-5,-20]){
                    rotate([0,0,0]){
                        color("red")
                        cube([2,5,40], center=false);
                    }
                }
            }
        }


        translate([0,0,5.5]){
            rotate([0,90,0]){
                for (hoek =[0:45:360])
                rotate([0,0,hoek]){
                    translate([-1,-5,-20]){
                        rotate([0,0,0]){
                            color("red")
                            cube([2,5,40], center=false);
                        }
                    }
                }
            }
        }        

        translate([0,0,-5.5]){
            rotate([0,90,0]){
                for (hoek =[0:45:360])
                rotate([0,0,hoek]){
                    translate([-1,-5,-20]){
                        rotate([0,0,0]){
                            color("red")
                            cube([2,5,40], center=false);
                        }
                    }
                }
            }
        }        

*/

        translate([0,0+8+3,-15]){
            rotate([0,0,90]){
                color("green")
                cylinder(h=30, r=5, $fn=100, center=false);
            }
        }
        translate([-20,0,0-5.5]){
            rotate([0,90,0]){
                color("red")
                cylinder(h=200, r=5, $fn=100, center=false);
            }
        }
        translate([-20,0,0+5.5]){
            rotate([0,90,0]){
                color("red")
                cylinder(h=200, r=5, $fn=100, center=false);
            }
        }


	}
}
