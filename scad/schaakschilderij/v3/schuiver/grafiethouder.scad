translate([0,-7,-7]){


        difference(){
            union(){

                translate([-13,0,0]){
                    cube([26,14,35], center=false);
                }      

            }
            union() {
                translate([-20,7,7]){
                    rotate([0,90,0]){
                        cylinder(h=100, r=4.2, $fn=100, center=false);
                    }
                }  


                translate([0,7,14]){
                    rotate([0,0,90]){
                        cylinder(h=33, r=4.5, $fn=100, center=false);
                    }
                }  

                translate([10,7,7]){
                    rotate([0,0,90]){
                        cylinder(h=33, r=1.2, $fn=100, center=false);
                    }
                }  
                translate([-10,7,7]){
                    rotate([0,0,90]){
                        cylinder(h=33, r=1.2, $fn=100, center=false);
                    }
                }  


                translate([-3.5,1,-1]){
                    cube([7,12,40], center=false);
                }


            }
        }
}