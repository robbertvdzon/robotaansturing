
difference(){
	union(){
        translate([-10,-5,14]){
           cube([20,10,18], center=false);
        }
        translate([-65/2,-5,14]){
           cube([65,10,3], center=false);
        }
        translate([-65/2-2,-5,14]){
           cube([12,27,3], center=false);
        }
        translate([65/2-8-2,-5,14]){
           cube([12,27,3], center=false);
        }

        
 
	}
	union() {

        translate([21+7.5,0,-1]){
            rotate([0,0,0]){
                cylinder(h=28, r=2, $fn=100, center=false);
            }
        }
        translate([-21-7.5,0,-1]){
            rotate([0,0,0]){
                cylinder(h=28, r=2, $fn=100, center=false);
            }
        }

        translate([21+7.5,15,-1]){
            rotate([0,0,0]){
                cylinder(h=28, r=2, $fn=100, center=false);
            }
        }
        translate([-21-7.5,15,-1]){
            rotate([0,0,0]){
                cylinder(h=28, r=2, $fn=100, center=false);
            }
        }

        translate([5,0,-1]){
            rotate([0,0,0]){
                cylinder(h=280, r=2, $fn=100, center=false);
            }
        }
        translate([-5,0,-1]){
            rotate([0,0,0]){
                cylinder(h=280, r=2, $fn=100, center=false);
            }
        }



	}
}
