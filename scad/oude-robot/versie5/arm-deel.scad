
difference(){
	union(){        

        translate([15,5,0]){
                cylinder(h=3, r=15, $fn=100, center=false);
        }
        translate([15,5,53]){
                cylinder(h=3, r=15, $fn=100, center=false);
        }

        translate([7.5,0,0]){
           cube([15,85,3], center=false);
        }
        translate([7.5,0,53]){
           cube([15,85,3], center=false);
        }

/*
        translate([7.5,70,-5]){
           cube([15,15,7], center=false);
        }
        translate([7.5,70,54]){
           cube([15,15,7], center=false);
        }

        translate([7.5,70,-5]){
           cube([15,50,3], center=false);
        }
        translate([7.5,70,58]){
           cube([15,50,3], center=false);
        }
*/



        translate([7.5,35,0]){
           cube([3,50,53], center=false);
        }
        translate([19.5,35,0]){
           cube([3,50,53], center=false);
        }

 

        

        
	}
	union() {

 

        translate([15,5,-10]){
            rotate(a = [0,0,-10]) {
                cylinder(h=500, r=1, $fn=100, center=false);
            }
        }	
        translate([15,112,-10]){
            rotate(a = [0,0,0]) {
                cylinder(h=400, r=3.7, $fn=100, center=false);
            }
        }	        


        translate([25,5,-10]){
            rotate(a = [0,0,-10]) {
                cylinder(h=500, r=1, $fn=100, center=false);
            }
        }	
        translate([5,5,-10]){
            rotate(a = [0,0,-10]) {
                cylinder(h=500, r=1, $fn=100, center=false);
            }
        }	
        translate([15,-5,-10]){
            rotate(a = [0,0,-10]) {
                cylinder(h=500, r=1, $fn=100, center=false);
            }
        }	
        translate([15,15,-10]){
            rotate(a = [0,0,-10]) {
                cylinder(h=500, r=1, $fn=100, center=false);
            }
        }	


        translate([15,55,-10]){
            rotate(a = [0,0,-10]) {
                cylinder(h=500, r=1, $fn=100, center=false);
            }
        }	
        translate([15,75,-10]){
            rotate(a = [0,0,-10]) {
                cylinder(h=500, r=1, $fn=100, center=false);
            }
        }	



	}
}
