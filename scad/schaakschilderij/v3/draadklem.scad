
difference(){
	union(){
        cylinder(h=7, r=6, $fn=100, center=false);
        translate([0,-5,3.5]){
            rotate([90,0,0]){
                cylinder(h=5, r=3.5, $fn=100, center=false);
            }
        }
    }
    union() {
        translate([0,0,-1]){
            rotate([0,0,0]){
                cylinder(h=28, r=4.5, $fn=100, center=false);
            }
        }
        translate([0,0,3.5]){
            rotate([90,0,0]){
                cylinder(h=28, r=1.2, $fn=100, center=false);
            }
        }
    }


}
