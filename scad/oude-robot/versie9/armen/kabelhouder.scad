ruimte_tussen_kabels = 5;

difference(){
	union(){        
        translate([0,0,0]){
           cube([15,20,lengte], center=false);
        }
	

        
	}
	union() {
        
        for (nr = [0:1:aantal_kabels-1]){
            a = 10+ruimte_tussen_kabels*nr;

    // schroefdraad
            translate([-20,10,a]){
                rotate(a = [0,90,0]) {
                    cylinder(h=400, r=1.3, $fn=30, center=false);
                }
            }	
        }
        // montage gaten
        
        translate([7.5,5,-10]){
            rotate(a = [0,0,0]) {
                cylinder(h=400, r=1.3, $fn=30, center=false);
            }
        }	

	


	}
}
