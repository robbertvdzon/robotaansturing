
difference(){
	union(){ 

        translate([0,0,0]){
           cube([30,20,3], center=false);
        }                
        translate([0,0,0]){
           cube([3,20,11], center=false);
        }                
        translate([27,0,0]){
           cube([3,20,11], center=false);
        }                
	}
	union() {
        translate([15,16,0]){
            rotate([0,0,90]){
                cylinder(h=200, r=1.5, $fn=100, center=true);
            }   
        }
        translate([15,4,0]){
            rotate([0,0,90]){
                cylinder(h=200, r=1.5, $fn=100, center=true);
            }   
        }
	}
}
