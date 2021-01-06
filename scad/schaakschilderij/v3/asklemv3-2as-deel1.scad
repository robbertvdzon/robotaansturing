
difference(){
	union(){

        translate([-9.5,-7.5,-33/2-3]){
            cube([15+9,15,39], center=false);
        }
      

	}
	union() {
        translate([-20,0,0]){
            rotate([0,90,0]){
                cylinder(h=108, r=1.2, $fn=100, center=false);
            }
        }  


        for (hoek =[0:45:360])
        rotate([0,0,hoek]){

            translate([-1,-5,-20]){
                rotate([0,0,0]){
                    color("red")
                    cube([2,5,40], center=false);
                }
            }
        }

        translate([0,0,-33/2+1]){
            rotate([0,0,90]){
                color("green")
                cylinder(h=33-2, r=5, $fn=100, center=false);
            }
        }
        translate([0,0,-25]){
            rotate([0,0,90]){
                color("green")
                cylinder(h=70, r=4, $fn=100, center=false);
            }
        }
        translate([6,0,0-5.5-4]){
            rotate([0,90,0]){
                cylinder(h=200, r=4.2, $fn=100, center=false);
            }
        }
        translate([6,0,0+5.5+4]){
            rotate([0,90,0]){
                cylinder(h=200, r=4.2, $fn=100, center=false);
            }
        }
        
      

        translate([7,20,-16]){
            rotate([90,0,0]){
                color("blue")
                cylinder(h=100, r=1.7, $fn=100, center=false);
            }
        }
        translate([-7,20,-16]){
            rotate([90,0,0]){
                color("blue")
                cylinder(h=100, r=1.7, $fn=100, center=false);
            }
        }
        translate([-7,20,15]){
            rotate([90,0,0]){
                color("blue")
                cylinder(h=100, r=1.7, $fn=100, center=false);
            }
        }
        translate([7,20,15]){
            rotate([90,0,0]){
                color("blue")
                cylinder(h=100, r=1.7, $fn=100, center=false);
            }
        }

        translate([12,20,5.5+4]){
            rotate([90,0,0]){
                color("blue")
                cylinder(h=100, r=1.2, $fn=100, center=false);
            }
        }
        translate([12,20,-5.5-4]){
            rotate([90,0,0]){
                color("blue")
                cylinder(h=100, r=1.2, $fn=100, center=false);
            }
        }


	}
}
