
difference(){
	union(){        
        translate([0,0,0]){
           cube([30,65,3], center=false);
        }
        translate([-15,5,0]){
           cube([60,10,3], center=false);
        }
	}
	union() {
        translate([27,23,-10]){
            rotate(a = [0,0,-10]) {
                cylinder(h=400, r=1, $fn=100, center=false);
            }
        }	
        translate([3,23,-10]){
            rotate(a = [0,0,-10]) {
                cylinder(h=400, r=1, $fn=100, center=false);
            }
        }	
        translate([15,10,-5]){
            rotate(a = [0,0,0]) {
                cylinder(h=10, r=1, $fn=100, center=false);
            }
        }	
        translate([8,10,-5]){
            rotate(a = [0,0,0]) {
                cylinder(h=10, r=1, $fn=100, center=false);
            }
        }	
        translate([22,10,-5]){
            rotate(a = [0,0,0]) {
                cylinder(h=10, r=1, $fn=100, center=false);
            }
        }	
        translate([-10,10,-5]){
            rotate(a = [0,0,0]) {
                cylinder(h=10, r=1, $fn=100, center=false);
            }
        }	
        translate([40,10,-5]){
            rotate(a = [0,0,0]) {
                cylinder(h=10, r=1, $fn=100, center=false);
            }
        }	

	}
}
