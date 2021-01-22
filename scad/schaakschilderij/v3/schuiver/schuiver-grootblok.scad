
difference(){
	union(){
        
        translate([0,0,0]){
            rotate([90,90,0]){
                translate([-13,-7,-7]){
                    cube([26,14,35], center=false);
                }         
            }
        }  

        translate([-9.5,-7.5,-33/2-3-10]){
            cube([15+9,15,39+20], center=false);
        }
        translate([-9.5,-7.5,-33/2-3]){
            cube([15+9+5,15,39], center=false);
        }
      

	}
	union() {

        translate([0,0,0]){
            rotate([90,90,0]){
                include <grafiethouder-reverse.scad>;                
            }
        }  

        for (hoek =[0:45:360])
        rotate([0,0,hoek]){

            translate([-1,-5,-30]){
                rotate([0,0,0]){
                    cube([2,5,60], center=false);
                }
            }
        }

        translate([0,0,-33/2+1-10]){
            rotate([0,0,90]){
                cylinder(h=50, r=5, $fn=100, center=false);
            }
        }
        translate([0,0,-35]){
            rotate([0,0,90]){
                cylinder(h=100, r=4, $fn=100, center=false);
            }
        }
        translate([6,0,0-5.5-4]){
            rotate([0,90,0]){
                cylinder(h=200, r=4.3, $fn=100, center=false);
            }
        }
        translate([6,0,0+5.5+4]){
            rotate([0,90,0]){
                cylinder(h=200, r=4.3, $fn=100, center=false);
            }
        }
        
      

        translate([7,20,-26]){
            rotate([90,0,0]){
                cylinder(h=100, r=1.2, $fn=100, center=false);
            }
        }
        translate([-7,20,-26]){
            rotate([90,0,0]){
                cylinder(h=100, r=1.2, $fn=100, center=false);
            }
        }
        translate([-7,20,25]){
            rotate([90,0,0]){
                cylinder(h=100, r=1.2, $fn=100, center=false);
            }
        }
        translate([7,20,25]){
            rotate([90,0,0]){
                cylinder(h=100, r=1.2, $fn=100, center=false);
            }
        }

        translate([17,20,5.5+4]){
            rotate([90,0,0]){
                cylinder(h=100, r=1.2, $fn=100, center=false);
            }
        }
        translate([17,20,-5.5-4]){
            rotate([90,0,0]){
                cylinder(h=100, r=1.2, $fn=100, center=false);
            }
        }


	}
}
