

        difference(){
            union(){

                translate([0,0,0]){
                    rotate([0,0,90]){
                        cylinder(h=6, r=7, $fn=100, center=false);
                    }
                }  
                translate([-4,4,0]){
                    cube([8,4,6], center=false);
                }      

            }
            union() {
                translate([-2,3,-1]){
                    cube([4,3,20], center=false);
                }      
                translate([0,0,-1]){
                    rotate([0,0,90]){
                        cylinder(h=33, r=4.1, $fn=100, center=false);
                    }
                }  
                translate([0,10,3]){
                    rotate([90,0,0]){
                        cylinder(h=10, r=1.2, $fn=100, center=false);
                    }
                }  


            }
        }
