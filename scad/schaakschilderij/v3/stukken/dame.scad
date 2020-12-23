difference(){
	union(){ 

        difference(){
            union(){ 
                translate([-33, -12,0]){
                    linear_extrude(height = 0.7, center = true, convexity = 10)
                    scale([0.095,0.095]) import(file = "../svg/dame.svg", layer = "plate");
                }                              
            }
            union() {
                translate([0+10,5,-10+1.2]){
                    rotate([0,0,0]){
                        cylinder(h=500, r=2.5, $fn=100, center=false);
                    }   
                }
                translate([0-10,5,-10+1.2]){
                    rotate([0,0,0]){
                        cylinder(h=500, r=2.5, $fn=100, center=false);
                    }   
                }
                translate([0,15,-10+1.2]){
                    rotate([0,0,0]){
                        cylinder(h=500, r=2.5, $fn=100, center=false);
                    }   
                }
            }
         }

	}
	union() {
    }
}


 