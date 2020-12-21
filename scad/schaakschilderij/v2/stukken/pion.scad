difference(){
	union(){ 

        translate([-5, 0,3]){
           cube([10,3.5,2], center=false);
        }                

        difference(){
            union(){ 


                translate([-27, -12,0]){
                    linear_extrude(height = 10, center = true, convexity = 10)

                    scale([0.075,0.075]) import(file = "../svg/pawn.svg", layer = "plate");
                }
                
            }
            union() {
                translate([-50, -50,-10]){
                   cube([100,50,20], center=false);
                }                
                
                
                translate([-7.1,-2,-3]){
                    rotate([0,45,0]){
                        cube([10,10,10], center=false);
                    }
                }                
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


 