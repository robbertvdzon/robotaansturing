
difference(){
	union(){        
        translate([-3.5,0,0]){
           cube([7,3,15], center=false);
        }

        translate([0,3,4]){
            rotate(a = [90,0,0]) {
                cylinder(h=10, r=1.9, $fn=30, center=false);
            }
        }


        
	}
	union() {


        translate([-10,-10,5.7]){
           cube([20,10,10], center=false);
        }

        translate([-10,-10,-7.7]){
           cube([20,10,10], center=false);
        }
	


	}
}
