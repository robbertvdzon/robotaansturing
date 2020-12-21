
difference(){
	union(){ 

        translate([0,0,0]){
           cube([10,20,3], center=false);
        }                
        translate([0,0,0]){
           cube([10,7,5], center=false);
        }                

	}
	union() {
        translate([5,5,2.5]){
            rotate([90,0,0]){
                cylinder(h=11, r=1.2, $fn=100, center=false);
            }   
        }

	}
}
