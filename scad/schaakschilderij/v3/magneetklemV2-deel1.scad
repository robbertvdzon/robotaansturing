
difference(){
	union(){
        translate([-65/2,-5,14]){
           cube([65,10,3], center=false);
        }

        translate([0,0,7]){
            rotate([0,0,0]){
                cylinder(h=10, r=15, $fn=100, center=false);
            }
        }
   
 
	}
	union() {
        translate([-55/2,-15,-1]){
           cube([55,10,30], center=false);
        }
        translate([0,0,2]){
            rotate([0,0,0]){
                cylinder(h=18, r=13, $fn=100, center=false);
            }
        }

        translate([21+7.5,0,-1]){
            rotate([0,0,0]){
                cylinder(h=28, r=1.2, $fn=100, center=false);
            }
        }
        translate([-21-7.5,0,-1]){
            rotate([0,0,0]){
                cylinder(h=28, r=1.2, $fn=100, center=false);
            }
        }



	}
}
