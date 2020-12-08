
difference(){
	union(){ 

        translate([0,0,0]){
           cube([40,7,4], center=false);
        }                
	}
	union() {
        translate([5,3.5,-1]){
            rotate([0,0,90]){
                cylinder(h=6, r=1.5,$fn=100, center=false);
            }   
        }
        translate([35,3.5,-1]){
            rotate([0,0,90]){
                cylinder(h=6, r=1.5,$fn=100, center=false);
            }   
        }
	}
}
