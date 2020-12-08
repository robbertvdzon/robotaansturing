
difference(){
	union(){ 

        translate([0,0,0]){
           cube([37,9,6], center=false);
        }                
	}
	union() {
        translate([5,4.5,-1]){
            rotate([0,0,90]){
                cylinder(h=8, r=1.5,$fn=100, center=false);
            }   
        }
        translate([35,4.5,-1]){
            rotate([0,0,90]){
                cylinder(h=6, r=1.5,$fn=100, center=false);
            }   
        }
        translate([35,4.5,4]){
            rotate([0,0,90]){
                cylinder(h=6, r=5,$fn=100, center=false);
            }   
        }
        translate([35-18,1.5,4]){
           cube([18,6,6], center=false);
        }                
        
	}
}
