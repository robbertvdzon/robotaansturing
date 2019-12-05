
difference(){
	union(){        
        translate([0,0,0]){
           cube([15,105,5], center=false);
        }
        translate([0,0,37]){
           cube([15,105,5], center=false);
        }
        translate([-15,0,0]){
           cube([45,5,42], center=false);
        }
	}
	union() {

        translate([-10,10,10]){
            rotate(a = [90,0,0]) {
                cylinder(h=30, r=1, $fn=100, center=true);
            }
        }	

        translate([-10,10,30]){
            rotate(a = [90,0,0]) {
                cylinder(h=30, r=1, $fn=100, center=true);
            }
        }	

        translate([25,10,10]){
            rotate(a = [90,0,0]) {
                cylinder(h=30, r=1, $fn=100, center=true);
            }
        }	

        translate([25,10,30]){
            rotate(a = [90,0,0]) {
                cylinder(h=30, r=1, $fn=100, center=true);
            }
        }	




        translate([7.5,40,-10]){
            rotate(a = [0,0,0]) {
                cylinder(h=400, r=1.5, $fn=100, center=false);
            }
        }	
        translate([7.5,30,-10]){
            rotate(a = [0,0,0]) {
                cylinder(h=400, r=1.5, $fn=100, center=false);
            }
        }	




        translate([7.5,98,-10]){
            rotate(a = [0,0,0]) {
                cylinder(h=400, r=3.7, $fn=100, center=false);
            }
        }	


	}
}
