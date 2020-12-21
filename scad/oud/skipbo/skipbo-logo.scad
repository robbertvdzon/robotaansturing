
difference(){
	union(){ 

        translate([0,-5,-1]){
           cube([58+58+9,100,2], center=false);
           // text("Skip Bo", font="arial");            
       
        
        }

	}
	union() {
        translate([8,3,0]){
            linear_extrude(10) text("Skip Bo", font="arial",size = 23);            
        }
        translate([121,87,0]){
            rotate(a = [0,0,180]) {
                translate([5,0,0]){
                    linear_extrude(10) text("Skip Bo", font="arial",size = 23);            
                }
            }
        }
	}
}
