
difference(){
	union(){         
        translate([0,7,12]){
           cube([18,4,10], center=false);
        }
        translate([0,-11,12]){
           cube([18,4,10], center=false);
        }
        translate([0,-26,10]){
           cube([3,52,14], center=false);
        }

       
        
	}
	union() {

	    translate([-1,-6,4]){
           cube([10,12,10], center=false);
        }	
	    translate([-1,-6,20]){
           cube([10,12,10], center=false);
        }	
	
        translate([-10,20,17]){
            rotate(a = [0,90,0]) {
                cylinder(h=320, r=4, $fn=100, center=false);
            }
        }	
        translate([-10,-20,17]){
            rotate(a = [0,90,0]) {
                cylinder(h=320, r=4, $fn=100, center=false);
            }
        }	

	
       translate([12.5,20,17]){
            rotate(a = [90,0,0]) {
                cylinder(h=320, r=1.5, $fn=100, center=false);
            }
        }	


	}
}
