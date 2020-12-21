
ruimte_tussen_kabels = 5;
dikte = 12;
lengte = 60;
aantal_kabels = 5;

difference(){
	union(){        
        translate([0,0,0]){
           cube([dikte,10,lengte], center=false);
        }


        
	}
	union() {
        
        for (nr = [0:1:aantal_kabels-1]){
            a = 10+ruimte_tussen_kabels*nr;
            // remkabel
            translate([dikte/2,50,a]){
                rotate(a = [90,0,0]) {
                    cylinder(h=400, r=2.5, $fn=30, center=false);
                }
            }
            // schroefdraad
            translate([-10,5,a]){
                rotate(a = [0,90,0]) {
                    cylinder(h=400, r=1.3, $fn=30, center=false);
                }
            }
        }

        translate([-10,5,5]){
            rotate(a = [0,90,0]) {
                cylinder(h=400, r=1.3, $fn=30, center=false);
            }
        }	
        translate([-10,5,55]){
            rotate(a = [0,90,0]) {
                cylinder(h=400, r=1.3, $fn=30, center=false);
            }
        }	



	


	}
}
