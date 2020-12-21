
difference(){
	union(){        
        translate([0,0,0]){
           cube([12,3,25], center=false);
        }
        translate([0,0,0]){
           cube([12,9,8], center=false);
        }
	
        translate([6,3,24]){
            rotate(a = [90,0,0]) {
                cylinder(h=3, r=6, $fn=30, center=false);
            }
        }

        
	}
	union() {
        
        translate([6,10,24]){
            rotate(a = [90,0,0]) {
                cylinder(h=400, r=3.8, $fn=30, center=false);
            }
        }

        translate([-1,5,4]){
            rotate(a = [0,90,0]) {
                cylinder(h=400, r=1.1, $fn=30, center=false);
            }
        }	
        translate([6,5,-10]){
            rotate(a = [0,0,0]) {
                cylinder(h=400, r=1.2, $fn=30, center=false);
            }
        }
	


	}
}
