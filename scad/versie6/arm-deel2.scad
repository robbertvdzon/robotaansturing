
difference(){
	union(){        
        translate([0,0,0]){
           cube([15,95,5], center=false);
        }
        translate([0,0,1]){
           cube([15,30,5], center=false);
        }
	}
	union() {


        translate([7.5,25,-5]){
            rotate(a = [0,0,-10]) {
                cylinder(h=500, r=1.5, $fn=100, center=false);
            }
        }	
        translate([7.5,5,-5]){
            rotate(a = [0,0,-10]) {
                cylinder(h=500, r=1.5, $fn=100, center=false);
            }
        }	




        translate([7.5,55,-10]){
            rotate(a = [0,0,0]) {
                cylinder(h=400, r=1.5, $fn=100, center=false);
            }
        }	
        translate([7.5,45,-10]){
            rotate(a = [0,0,0]) {
                cylinder(h=400, r=1.5, $fn=100, center=false);
            }
        }	


/*
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


*/

        translate([7.5,88,-10]){
            rotate(a = [0,0,0]) {
                cylinder(h=400, r=3.7, $fn=100, center=false);
            }
        }	


	}
}
