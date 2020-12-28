difference(){
	union(){ 

        difference(){
            union(){ 
                translate([-33, -12,0]){
                    linear_extrude(height = 3.5, center = true, convexity = 10)
                    scale([0.095,0.095]) import(file = "../svg/dame.svg", layer = "plate");
                }                              
            }
            union() {
                translate([0+10,5,3.5/2-1]){
                    rotate([0,0,0]){
                        cylinder(h=500, r=2.5, $fn=100, center=false);
                    }   
                }
                translate([0-10,5,3.5/2-1]){
                    rotate([0,0,0]){
                        cylinder(h=500, r=2.5, $fn=100, center=false);
                    }   
                }
                translate([0,15,3.5/2-1]){
                    rotate([0,0,0]){
                        cylinder(h=500, r=2.5, $fn=100, center=false);
                    }   
                }
                translate([0,3,-0.9]){
                    rotate([0,0,0]){
                        cylinder(h=500, r=11.5, $fn=100, center=false);
                    }   
                }
            }
         }

	}
	union() {
    }
}


 