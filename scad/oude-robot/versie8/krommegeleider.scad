
ruimte_tussen_kabels = 5;
dikte = 15;
lengte = 60;
aantal_kabels = 5;

difference(){
	union(){        
        translate([0,0,0]){
           cube([dikte,15,lengte], center=false);
        }


        
	}
	union() {
            translate([0,0,8]){
                rotate(a = [0,0,90]) {
                    cylinder(h=30, r=10, $fn=90, center=false);
                }
            }
        


        translate([-10,7.5,5]){
            rotate(a = [0,90,0]) {
                cylinder(h=400, r=1.3, $fn=30, center=false);
            }
        }	
        translate([-10,7.5,55]){
            rotate(a = [0,90,0]) {
                cylinder(h=400, r=1.3, $fn=30, center=false);
            }
        }	



	


	}
}
