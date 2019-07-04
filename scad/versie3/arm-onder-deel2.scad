
difference(){
	union(){
       
        translate([0,45,-4]){
           cube([30,75,3], center=false);
        }
        // deel 2 -1
        translate([0,45,-4]){
           cube([30,20,4], center=false);
        }
	}
	union() {

        // deel 2
        translate([15,110,-10]){
            rotate(a = [0,0,0]) {
                cylinder(h=20, r=3.7, $fn=100, center=false);
            }
        }	


        
	}
}
