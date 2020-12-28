
difference(){
	union(){
        translate([-12,-10,-5]){
            cube([27,2,10], center=false);
        }


	}
	union() {
        translate([10,20,0]){
            rotate([90,0,0]){
                color("blue")
                cylinder(h=100, r=1.2, $fn=100, center=false);
            }
        }
        translate([-8,20,0]){
            rotate([90,0,0]){
                color("blue")
                cylinder(h=100, r=1.2, $fn=100, center=false);
            }
        }
        
        translate([0,0,0]){
            rotate([90,0,0]){
                cylinder(h=18, r=1.5, $fn=100, center=false);
            }
        }        
        
	}
}
