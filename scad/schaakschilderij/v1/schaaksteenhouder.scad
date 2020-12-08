
difference(){
	union(){ 

        translate([0,0,0]){
           cube([50,24,2], center=false);
        }                
        translate([25,12,2]){
            rotate([0,0,90]){
                cylinder(h=5, r1=5, r2=0, $fn=100, center=false);
            }   
        }
	}
	union() {

	}
}
