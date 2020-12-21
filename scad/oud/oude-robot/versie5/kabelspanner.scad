
difference(){
	union(){        
        translate([0,0,0]){
           cube([6,6,6], center=false);
        }
        translate([0,0,0]){
           cube([2,30,6], center=false);
        }
        translate([4,0,0]){
           cube([2,30,6], center=false);
        }
        translate([0,30,0]){
           cube([6,6,6], center=false);
        }
        
	}
	union() {
        translate([3,0,3]){
            rotate(a = [90,0,0]) {
                cylinder(h=30, r=1.4, $fn=100, center=true);
            }
        }	
        translate([3,0,3]){
            rotate(a = [90,0,0]) {
                cylinder(h=300, r=1.0, $fn=100, center=true);
            }
        }	
	}
}
