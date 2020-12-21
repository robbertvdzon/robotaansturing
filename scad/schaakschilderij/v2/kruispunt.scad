
difference(){
	union(){ 

        translate([-7.5-3,-7.5-5,-37.5-2+15]){
           cube([66,38,45+4], center=false);
        }                


            
	}
	union() {

        // horizontale
        translate([0,15,-15]){
            rotate([0,90,0]){
                cylinder(h=200, r=7.5, $fn=100, center=true);
            }   
        }
        translate([0,15,15]){
            rotate([0,90,0]){
                cylinder(h=200, r=7.5, $fn=100, center=true);
            }   
        }
        
        // verticale
        translate([15/2,0,0]){
            rotate([0,0,90]){
                cylinder(h=200, r=7.5, $fn=100, center=true);
            }   
        }
        translate([15/2+30,0,0]){
            rotate([0,0,90]){
                cylinder(h=200, r=7.5, $fn=100, center=true);
            }   
        }
        
        
        // 4 voor pakker
        translate([0,0,0]){
            rotate([90,0,0]){
                cylinder(h=200, r=7.5, $fn=100, center=true);
            }   
        }
        translate([15,0,0]){
            rotate([90,0,0]){
                cylinder(h=200, r=7.5, $fn=100, center=true);
            }   
        }
        translate([30,0,0]){
            rotate([90,0,0]){
                cylinder(h=200, r=7.5, $fn=100, center=true);
            }   
        }
        translate([45,0,0]){
            rotate([90,0,0]){
                cylinder(h=200, r=7.5, $fn=100, center=true);
            }   
        }
               

	}
}
