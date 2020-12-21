
difference(){
	union(){        
        translate([0,0,0]){
           cube([10,10,20], center=false);
        }
	

        
	}
	union() {
        
    // schroefdraad
            translate([-10,5,10]){
                rotate(a = [0,90,0]) {
                    cylinder(h=400, r=1.3, $fn=30, center=false);
                }
            }	
        
        // montage gaten
        
        translate([5,5,-10]){
            rotate(a = [0,0,0]) {
                cylinder(h=400, r=1.3, $fn=30, center=false);
            }
        }	

	


	}
}
