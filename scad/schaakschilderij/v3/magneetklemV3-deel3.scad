
difference(){
	union(){
        translate([0,0,0]){
           cube([67,15,3], center=false);
        }        
	}
	union() {
        translate([7.5+15,7.5,-1]){
            rotate([0,0,0]){
                cylinder(h=28, r=1.5, $fn=100, center=false);
            }
        }
        translate([7.5+22,7.5,-1]){
            rotate([0,0,0]){
                cylinder(h=28, r=1.5, $fn=100, center=false);
            }
        }
        translate([67-7.5-15,7.5,-1]){
            rotate([0,0,0]){
                cylinder(h=28, r=1.5, $fn=100, center=false);
            }
        }
        translate([67-7.5-22,7.5,-1]){
            rotate([0,0,0]){
                cylinder(h=28, r=1.5, $fn=100, center=false);
            }
        }

        translate([3,7.5,-1]){
            rotate([0,0,0]){
                cylinder(h=28, r=1.2, $fn=100, center=false);
            }
        }
        translate([67-3,7.5,-1]){
            rotate([0,0,0]){
                cylinder(h=28, r=1.2, $fn=100, center=false);
            }
        }




	}
}
