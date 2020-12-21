difference(){
	union(){ 

        difference(){
            union(){ 


                translate([-33, -12,0]){
                    linear_extrude(height = 1, center = true, convexity = 10)

                    scale([0.095,0.095]) import(file = "../svg/dame.svg", layer = "plate");
                }
                
                
            }
            union() {
                translate([0+10,5,-10+1.2]){
                    rotate([0,0,0]){
                        cylinder(h=5, r=3, $fn=100, center=false);
                    }   
                }
                translate([0-10,5,-10+1.2]){
                    rotate([0,0,0]){
                        cylinder(h=5, r=3, $fn=100, center=false);
                    }   
                }
            }
         }

	}
	union() {
    }
}


 