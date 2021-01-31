
difference(){
	union(){
        
        translate([0,0,0]){
            rotate([150,90,0]){
                translate([-13,-7,-7]){
                    cube([26,14,35], center=false);
                }         
            }
        }  

        translate([-9.5-9,-7.5,34]){
            cube([15+9+18,15,9], center=false);
        }
        translate([-9.5-9,-7.5,25.5]){
            cube([15+9+18,15,4], center=false);
        }

        translate([-9.5-9,-7.5,25.5-20]){
            cube([10,15,4], center=false);
        }



        translate([-9.5,-7.5,-33/2-3-10]){
            cube([24,15,59], center=false);
        }


        translate([14,0,0-5.5-4]){
            rotate([0,90,0]){
                cylinder(h=8, r=7.5, $fn=100, center=false);
            }
        }
        translate([14,0,0+5.5+4]){
            rotate([0,90,0]){
                cylinder(h=8, r=7.5, $fn=100, center=false);
            }
        }

      


	}
	union() {
        translate([-9.5,-7.5+15,-33/2-3-10]){
            cube([24,15,59], center=false);
        }

        translate([20,-5.5,-30]){
            rotate([0,0,90]){
                cylinder(h=50, r=1.2, $fn=100, center=false);
            }
        }


        translate([0,0,34]){
            rotate([0,0,90]){
                cylinder(h=20, r=5, $fn=100, center=false);
            }
        }
        translate([20,0,14]){
            rotate([0,0,90]){
                cylinder(h=30, r=1.5, $fn=100, center=false);
            }
        }
        translate([-14,0,14]){
            rotate([0,0,90]){
                cylinder(h=30, r=1.5, $fn=100, center=false);
            }
        }

        translate([0,0,0]){
            rotate([150,90,0]){
                include <grafiethouder-reverse.scad>;                
            }
        }  

        for (hoek =[0:45:360])
        rotate([0,0,hoek]){

            translate([-1,-5,-30]){
                rotate([0,0,0]){
                    cube([2,10,60], center=false);
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
                cylinder(h=200, r=4.4, $fn=100, center=false);
            }
        }
        translate([6,0,0+5.5+4]){
            rotate([0,90,0]){
                cylinder(h=200, r=4.4, $fn=100, center=false);
            }
        }
        
      

        translate([7,20,-26]){
            rotate([90,0,0]){
                cylinder(h=100, r=1.5, $fn=100, center=false);
            }
        }
        translate([-7,20,-26]){
            rotate([90,0,0]){
                cylinder(h=100, r=1.5, $fn=100, center=false);
            }
        }
        translate([-7,20,38]){
            rotate([90,0,0]){
                cylinder(h=100, r=1.5, $fn=100, center=false);
            }
        }
        translate([7,20,38]){
            rotate([90,0,0]){
                cylinder(h=100, r=1.5, $fn=100, center=false);
            }
        }

        translate([19,20,5.5+4]){
            rotate([90,0,0]){
                cylinder(h=100, r=1.2, $fn=100, center=false);
            }
        }
        translate([19,20,-5.5-4]){
            rotate([90,0,0]){
                cylinder(h=100, r=1.2, $fn=100, center=false);
            }
        }


	}
}
