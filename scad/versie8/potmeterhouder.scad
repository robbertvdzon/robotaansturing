
difference(){
	union(){        
        translate([-4,0,0]){
           cube([8,3,35], center=false);
        }

        translate([0,3,0]){
            rotate(a = [90,0,0]) {
                cylinder(h=3, r=7.5, $fn=30, center=false);
            }
        }

        
	}
	union() {
        
        translate([0,10,0]){
            rotate(a = [90,0,0]) {
                cylinder(h=400, r=4.5, $fn=30, center=false);
            }
        }

        translate([0,10,20]){
            rotate(a = [90,0,0]) {
                cylinder(h=400, r=1.5, $fn=30, center=false);
            }
        }
        translate([0,10,30]){
            rotate(a = [90,0,0]) {
                cylinder(h=400, r=1.5, $fn=30, center=false);
            }
        }


	


	}
}
