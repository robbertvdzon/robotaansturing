
difference(){
	union(){ 

        translate([0,0,0]){
           cube([58+58+8,100,35], center=false);
        }
        

	}
	union() {
        translate([2,2,2]){
           cube([58+58+4,96,99], center=false);
        }
        translate([(58+58+8)/2,150,35]){
            rotate(a = [90,0,0]) {
                cylinder(h=200, r=15, $fn=100, center=false);
            }
        }        

	}
}
