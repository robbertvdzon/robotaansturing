
difference(){
	union(){ 

        translate([0,0,0]){
           cube([16,10,3], center=false);
        }                
        translate([0,0,0]){
           cube([3,10,14], center=false);
        }                
        translate([13,0,0]){
           cube([3,10,14], center=false);
        }                
	}
	union() {

        translate([0,5,11]){
            rotate([0,90,0]){
                cylinder(h=200, r=1.5, $fn=100, center=true);
            }   
        }
        translate([8,5,0]){
            rotate([0,0,90]){
                cylinder(h=200, r=1.5, $fn=100, center=true);
            }   
        }

	}
}
