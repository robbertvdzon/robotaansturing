translate([0,-7,-7]){


        difference(){
            union(){

                translate([-13,7,7]){
                    rotate([0,90,0]){
                        cylinder(h=26, r=4.2, $fn=100, center=false);
                    }
                }  


                translate([0,7,14]){
                    rotate([0,0,90]){
                        cylinder(h=40-14, r=4.5, $fn=100, center=false);
                    }
                }  

                translate([10,7,7]){
                    rotate([0,0,90]){
//                        cylinder(h=40-7, r=1.2, $fn=100, center=false);
                    }
                }  
                translate([-10,7,7]){
                    rotate([0,0,90]){
//                        cylinder(h=40-7, r=1.2, $fn=100, center=false);
                    }
                }  


                translate([-3.5,1,0]){
                    cube([7,12,40], center=false);
                }

            }
            union() {



            }
        }
}