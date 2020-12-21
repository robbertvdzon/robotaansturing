
difference(){
	union(){ 

        translate([-10,-5,-2]){
          cube([20,10,4.3], center=false);
        }                

	}
	union() {


        translate([0+5,0,1]){
            rotate([0,0,0]){
                cylinder(h=5, r=3, $fn=100, center=false);
            }   
        }
        translate([0-5,0,1]){
            rotate([0,0,0]){
                cylinder(h=5, r=3, $fn=100, center=false);
            }   
        }

	}
}
