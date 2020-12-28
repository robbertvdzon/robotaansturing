
difference(){
	union(){
        translate([-50/2,-5,14]){
           cube([50,10,3], center=false);
        }

        translate([0,0,7]){
            rotate([0,0,0]){
                cylinder(h=10, r=12.2, $fn=100, center=false);
            }
        }
   
 
	}
	union() {
        translate([11.7,-5,4]){
           cube([20,20,10], center=false);
        }
        translate([-13.7,-5,4]){
           cube([2,20,10], center=false);
        }
        translate([-55/2,-15,-1]){
           cube([55,10,30], center=false);
        }
        translate([0,0,2]){
            rotate([0,0,0]){
                cylinder(h=20, r=10.2, $fn=100, center=false);
            }
        }

        translate([21,0,-1]){
            rotate([0,0,0]){
                cylinder(h=28, r=1.2, $fn=100, center=false);
            }
        }
        translate([-21,0,-1]){
            rotate([0,0,0]){
                cylinder(h=28, r=1.2, $fn=100, center=false);
            }
        }
//142/21

	}
}
