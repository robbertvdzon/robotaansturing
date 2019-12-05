
difference(){
	union(){        

        translate([0,0,0]){
                cylinder(h=10, r=15, $fn=100, center=false);
        }
	}
	union() {

        translate([0,0,-10]){
            rotate(a = [0,0,-10]) {
                cylinder(h=500, r=1.5, $fn=100, center=false);
            }
        }	
        translate([0,0,-10]){
            rotate(a = [0,45,0]) {
                cylinder(h=500, r=1.5, $fn=100, center=false);
            }
        }	
        translate([0,0,-10]){
            rotate(a = [0,-45,0]) {
                cylinder(h=500, r=1.5, $fn=100, center=false);
            }
        }	




	}
}
