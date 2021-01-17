translate([0,-7,-7]){


        difference(){
            union(){

                translate([-13,0,0]){
                    cube([26,14,10], center=false);
                }      

            }
            union() {
                translate([-8,-1,-1]){
                    cube([16,16,8], center=false);
                }      

                translate([10,7,-1]){
                    rotate([0,0,90]){
                        cylinder(h=33, r=1.6, $fn=100, center=false);
                    }
                }  
                translate([-10,7,-1]){
                    rotate([0,0,90]){
                        cylinder(h=33, r=1.6, $fn=100, center=false);
                    }
                }  


            }
        }
}