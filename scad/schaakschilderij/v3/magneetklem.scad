mirror(v= [0,180,0] ) {
difference(){
	union(){
        translate([0,-5,0]){
           cube([71,36,10], center=false);
        }

   
 
	}
	union() {
        translate([-1,12.5,-5]){
           cube([200,20,20], center=false);
        }

        translate([5,3+(20-15.5)/2,-1]){
           cube([15,15.5,20], center=false);
        }
        translate([50,3+(20-15.5)/2,-1]){
           cube([15,15.5,20], center=false);
        }
        translate([35,3+10,-1]){
            rotate([0,0,90]){
                cylinder(h=30, r=15.2, $fn=100, center=true);
            }
        }
        translate([2.5,3+0,5]){
            rotate([90,0,0]){
                cylinder(h=300, r=1.6, $fn=100, center=true);
            }
        }
        translate([60-2.5,3+0,5]){
            rotate([90,0,0]){
                cylinder(h=300, r=1.6, $fn=100, center=true);
            }
        }


	}
}
}