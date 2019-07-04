
difference(){
	union(){        
        translate([0,0,0]){
           cube([30,65,3], center=false);
        }
        translate([0,0,22]){
           cube([30,65,3], center=false);
        }
        translate([-15,0,0]){
           cube([60,3,25], center=false);
        }
	}
	union() {
        translate([-10,10,12.5]){
            rotate(a = [90,0,0]) {
                cylinder(h=30, r=1, $fn=100, center=true);
            }
        }	
        translate([40,10,12.5]){
            rotate(a = [90,0,0]) {
                cylinder(h=30, r=1, $fn=100, center=true);
            }
        }	
        translate([8,20,-5]){
            rotate(a = [0,0,0]) {
                cylinder(h=30, r=1, $fn=100, center=false);
            }
        }	
        translate([22,20,-5]){
            rotate(a = [0,0,0]) {
                cylinder(h=30, r=1, $fn=100, center=false);
            }
        }	
        translate([15,50,-10]){
            rotate(a = [0,0,0]) {
                cylinder(h=40, r=3.7, $fn=100, center=false);
            }
        }	


	}
}
