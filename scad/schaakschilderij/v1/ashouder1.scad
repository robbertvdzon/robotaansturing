
difference(){
	union(){ 

        translate([0,0,0]){
           cube([30,30,10], center=false);
        }                
	}
	union() {
        translate([15,15,15]){
            rotate([0,0,90]){
                cylinder(h=200, r=4, $fn=100, center=true);
            }   
        }
        translate([5.25,5.25,0]){
            rotate([0,0,90]){
                cylinder(h=200, r=1, $fn=100, center=true);
            }   
        }
        translate([5.25,30-5.25,0]){
            rotate([0,0,90]){
                cylinder(h=200, r=1, $fn=100, center=true);
            }   
        }
        translate([30-5.25,5.25,0]){
            rotate([0,0,90]){
                cylinder(h=200, r=1, $fn=100, center=true);
            }   
        }
        translate([30-5.25,30-5.25,0]){
            rotate([0,0,90]){
                cylinder(h=200, r=1, $fn=100, center=true);
            }   
        }
	}
}
