mirror(v= [0,180,0] ) {
difference(){
	union(){
        translate([0,-3,0]){
           cube([60,20,10], center=false);
        }

   
 
	}
	union() {
        translate([-1,9.5,-5]){
           cube([62,20,20], center=false);
        }

        translate([5,(20-13)/2,-1]){
           cube([15,13,20], center=false);
        }
        translate([40,(20-13)/2,-1]){
           cube([15,13,20], center=false);
        }
        translate([30,10,-1]){
            rotate([0,0,90]){
                cylinder(h=30, r=10, $fn=100, center=true);
            }
        }
        translate([3,0,5]){
            rotate([90,0,0]){
                cylinder(h=300, r=1.2, $fn=100, center=true);
            }
        }
        translate([60-3,0,5]){
            rotate([90,0,0]){
                cylinder(h=300, r=1.2, $fn=100, center=true);
            }
        }


	}
}
}