mirror(v= [0,180,0] ) {
difference(){
	union(){
        translate([0,10,-23]){
           cube([40,35,5], center=false);
        }
        translate([0,10,-18]){
           cube([5,60,38+22], center=false);
        }
        translate([0,45,-16]){
           cube([45,5,55], center=false);
        }
        translate([0,45,-2]){
           cube([60,5,44], center=false);
        }
        translate([0,45,-22]){
           cube([55,25,8], center=false);
        }




        translate([40+8+3,58,-18]){
            rotate([0,0,90]){
                cylinder(h=8, r=6, $fn=100, center=true);
            }
        }
        translate([40,47.5,-6]){
            rotate([90,0,0]){
                cylinder(h=5, r=6, $fn=100, center=true);
            }
        }
        translate([47/2+5+8+3,47.5,20]){
            rotate([90,0,0]){
                cylinder(h=5, r=12, $fn=100, center=true);
            }
        }
                
 
	}
	union() {

        translate([20,48,-6]){
            rotate([90,0,0]){
                cylinder(h=10, r=6, $fn=100, center=true);
            }
        }
        translate([18+8+3,58,-15]){
            rotate([0,0,90]){
                cylinder(h=15, r=7, $fn=100, center=true);
            }
        }

        translate([5,44,-12]){
           cube([15,10,12], center=false);
        }

        translate([10,51,-23]){
           cube([20,14,16], center=false);
        }

        translate([40,48,-6]){
            rotate([90,0,0]){
                cylinder(h=10, r=4, $fn=100, center=true);
            }
        }
        translate([51,48,-18]){
            rotate([90,0,0]){
                cylinder(h=100, r=1.2, $fn=100, center=true);
            }
        }
        translate([40+8+3,58,-15]){
            rotate([0,0,90]){
                cylinder(h=20, r=4, $fn=100, center=true);
            }
        }
        translate([40,53,-15]){
            rotate([0,0,90]){
                cylinder(h=20, r=1.2, $fn=100, center=true);
            }
        }
        translate([47/2+5+8+3,57,20]){
            rotate([90,0,0]){
                cylinder(h=50, r=15.5, $fn=100, center=true);
            }
        }

//-
        translate([39.5+15.5,57,20+15.5]){
            rotate([90,0,0]){
                cylinder(h=50, r=1.5, $fn=100, center=true);
            }
        }
        translate([39.5+15.5,57,20-15.5]){
            rotate([90,0,0]){
                cylinder(h=50, r=1.5, $fn=100, center=true);
            }
        }
        translate([39.5-15.5,57,20+15.5]){
            rotate([90,0,0]){
                cylinder(h=50, r=1.5, $fn=100, center=true);
            }
        }
        translate([39.5-15.5,57,20-15.5]){
            rotate([90,0,0]){
                cylinder(h=50, r=1.5, $fn=100, center=true);
            }
        }
        

        translate([0,15,12]){
            rotate([0,90,0]){
                cylinder(h=200, r=1.5, $fn=100, center=true);
            }
        }
        translate([0,65,12]){
            rotate([0,90,0]){
                cylinder(h=200, r=1.5, $fn=100, center=true);
            }
        }
        translate([0,15,35]){
            rotate([0,90,0]){
                cylinder(h=200, r=1.5, $fn=100, center=true);
            }
        }
        translate([0,65,35]){
            rotate([0,90,0]){
                cylinder(h=200, r=1.5, $fn=100, center=true);
            }
        }

        translate([47/2+5,42/2,4]){
            rotate([0,0,90]){
                cylinder(h=100, r=7.5, $fn=100, center=true);
            }
        }
        /*
        translate([47/2+5-15,42/2-15-0.5,0]){
            rotate([0,0,90]){
                cylinder(h=200, r=1.5, $fn=100, center=true);
            }
        }
        translate([47/2+5-15,42/2+15+0.5,0]){
            rotate([0,0,90]){
                cylinder(h=200, r=1.5, $fn=100, center=true);
            }
        }
        translate([47/2+5+15,42/2-15-0.5,0]){
            rotate([0,0,90]){
                cylinder(h=200, r=1.5, $fn=100, center=true);
            }
        }
        translate([47/2+5+15,42/2+15+0.5,0]){
            rotate([0,0,90]){
                cylinder(h=200, r=1.5, $fn=100, center=true);
            }
        }
        */

	}
}
}