
difference(){
	union(){        
        translate([-15,0,0]){
           cube([60,10,3], center=false);
        }

        translate([0,0,0]){
           cube([30,85,3], center=false);
        }
        translate([0,0,14]){
           cube([30,85,3], center=false);
        }


        translate([0,70,-4]){
           cube([30,15,7], center=false);
        }
        translate([0,70,14]){
           cube([30,15,7], center=false);
        }

        translate([0,70,-4]){
           cube([30,50,3], center=false);
        }
        translate([0,70,18]){
           cube([30,50,3], center=false);
        }




        translate([0,0,0]){
           cube([3,50,14], center=false);
        }
        translate([27,0,0]){
           cube([3,50,14], center=false);
        }
        
        translate([11,5,0]){
            rotate(a = [0,0,0]) {
                cylinder(h=14, r=3, $fn=100, center=false);
            }
        }	
        translate([19,5,0]){
            rotate(a = [0,0,0]) {
                cylinder(h=14, r=3, $fn=100, center=false);
            }
        }	

        translate([15,5,-1]){
            rotate(a = [0,0,-10]) {
                cylinder(h=1, r=4, $fn=100, center=false);
            }
        }	
        translate([15,5,17]){
            rotate(a = [0,0,-10]) {
                cylinder(h=1, r=4, $fn=100, center=false);
            }
        }	

        
	}
	union() {

        translate([15,5,-2]){
            rotate(a = [0,0,-10]) {
                cylinder(h=2, r=2.5, $fn=100, center=false);
            }
        }	

        translate([15,5,17]){
            rotate(a = [0,0,-10]) {
                cylinder(h=2, r=2.5, $fn=100, center=false);
            }
        }	


        translate([15,5,-10]){
            rotate(a = [0,0,-10]) {
                cylinder(h=50, r=1, $fn=100, center=false);
            }
        }	
        translate([40,5,-10]){
            rotate(a = [0,0,-10]) {
                cylinder(h=50, r=1, $fn=100, center=false);
            }
        }	
        translate([-10,5,-10]){
            rotate(a = [0,0,-10]) {
                cylinder(h=50, r=1, $fn=100, center=false);
            }
        }	
        translate([15,112,-10]){
            rotate(a = [0,0,0]) {
                cylinder(h=40, r=3.7, $fn=100, center=false);
            }
        }	        



	}
}
