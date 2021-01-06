
difference(){
	union(){
        translate([29.5,6.5,-40]){
           cube([6,2,42], center=false);
        }   

    }
    union() {
        translate([32.5,15,-2.5]){
            rotate([90,0,0]){
                cylinder(h=28, r=1.5, $fn=100, center=false);
            }
        }
        translate([32.5,15,-35.5]){
            rotate([90,0,0]){
                cylinder(h=28, r=1.5, $fn=100, center=false);
            }
        }        
    }


}
