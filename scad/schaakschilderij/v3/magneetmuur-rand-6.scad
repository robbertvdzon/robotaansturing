
difference(){
	union(){ 
        translate([0,0,0]){
           cube([65,15,5], center=false);
        }                
	}
	union() {
        translate([60-65/2+9, 3,3]){
            linear_extrude(height = 10) {
                rotate([0,0,90]){
                    text("6", size = 10, font="Arial:style=Bold");
                }
            }
        }                


	}
}
