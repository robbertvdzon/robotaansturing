
difference(){
	union(){
        translate([0,0,0]){
           cube([67,13,18.5], center=false);
        }        
	}
	union() {
        translate([6,-1,3]){
           cube([55,20,15.6], center=false);
        }

        translate([7.5+15,6.5,-1]){
            rotate([0,0,0]){
                cylinder(h=28, r=1.5, $fn=100, center=false);
            }
        }
        translate([7.5+22,6.5,-1]){
            rotate([0,0,0]){
                cylinder(h=28, r=1.5, $fn=100, center=false);
            }
        }
        translate([67-7.5-15,6.5,-1]){
            rotate([0,0,0]){
                cylinder(h=28, r=1.5, $fn=100, center=false);
            }
        }
        translate([67-7.5-22,6.5,-1]){
            rotate([0,0,0]){
                cylinder(h=28, r=1.5, $fn=100, center=false);
            }
        }

        translate([3,6.5,-1]){
            rotate([0,0,0]){
                cylinder(h=28, r=1.2, $fn=100, center=false);
            }
        }
        translate([67-3,6.5,-1]){
            rotate([0,0,0]){
                cylinder(h=28, r=1.2, $fn=100, center=false);
            }
        }




	}
}
