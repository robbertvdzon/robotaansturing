difference(){
	union(){ 

        difference(){
            union(){ 
                translate([-33, -12,0]){
                    linear_extrude(height = 1.2, center = true, convexity = 10)
                    scale([0.095,0.095]) import(file = "../svg/dame.svg", layer = "plate");
                }           
            }
            union() {
                translate([-29/2,0,-2]){
                    cube([29,13,3], center=false);
                }                
            }
         }

	}
	union() {
    }
}


 