
difference(){
	union(){        

        translate([15,5,0]){
                cylinder(h=3, r=15, $fn=100, center=false);
        }
	}
	union() {



        translate([17.5,5,-10]){
            rotate(a = [0,0,-10]) {
                cylinder(h=500, r=1.5, $fn=100, center=false);
            }
        }	
        translate([12.5,5,-10]){
            rotate(a = [0,0,-10]) {
                cylinder(h=500, r=1.5, $fn=100, center=false);
            }
        }	
        translate([15,-2.5,-10]){
            rotate(a = [0,0,-10]) {
                cylinder(h=500, r=1.5, $fn=100, center=false);
            }
        }	
        translate([15,12.5,-10]){
            rotate(a = [0,0,-10]) {
                cylinder(h=500, r=1.5, $fn=100, center=false);
            }
        }	




	}
}
