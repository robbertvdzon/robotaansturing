
difference(){
	union(){

        translate([-6,-7.5,0]){
            cube([12,15+11,2], center=false);
        }
	}
	union() {

         translate([0,0,0]){
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


        translate([0,0,-15]){
            rotate([0,0,90]){
                color("green")
                cylinder(h=30, r=4, $fn=100, center=false);
            }
        }
        translate([0,11,-15]){
            rotate([0,0,90]){
                color("green")
                cylinder(h=30, r=4, $fn=100, center=false);
            }
        }


	}
}
