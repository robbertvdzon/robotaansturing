
difference(){
	union(){ 
        translate([0,0,0]){
           cube([65,15,5], center=false);
        }                
	}
	union() {
        translate([60-65/2, 3,3]){
            linear_extrude(height = 10) {
                text("F", size = 10, font="Arial:style=Bold");
            }
        }                


	}
}
