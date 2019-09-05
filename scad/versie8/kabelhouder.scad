
ruimte_tussen_kabels = 5;
dikte = 10;

difference(){
	union(){   
 

        translate([0,0,0]){
           cube([dikte,70,lengte], center=false);
        }
	
        
	}
	union() {
        translate([-2,20,0]){
           cube([dikte+4,70,12.5], center=false);
        }
        
        for (nr = [0:1:aantal_kabels-1]){
            a = 10+ruimte_tussen_kabels*nr;
            // remkabel
            translate([dikte/2,150,a]){
                rotate(a = [90,0,0]) {
                    cylinder(h=999, r=1.3, $fn=30, center=false);
                }
            }
        }
        // montage gaten
        for (motagegatpos = [5:10:100]){
            translate([dikte/2,motagegatpos,-1]){
                rotate(a = [0,0,0]) {
                    cylinder(h=8, r=1.3, $fn=30, center=false);
                }
            }	
        }
        for (motagegatpos = [5:10:100]){
            translate([dikte/2,motagegatpos,lengte-9]){
                rotate(a = [0,0,0]) {
                    cylinder(h=10, r=1.3, $fn=30, center=false);
                }
            }	
        }


	


	}
}
