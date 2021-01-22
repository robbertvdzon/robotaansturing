

        difference(){
            union(){

                translate([0,0,0]){
                    cube([12,3,55], center=false);
                }      


                translate([0,14,0]){
                    cube([12,4,55], center=false);
                }      

                translate([0,14,0]){
                    cube([12,10,25], center=false);
                }      


                translate([0,-15,0]){
                    cube([12,55,3], center=false);
                }      


            }
            union() {

                translate([6,36,-1]){
                    rotate([0,0,90]){
                        cylinder(h=10, r=1.5, $fn=100, center=false);
                    }
                }  
                translate([6,-10,-1]){
                    rotate([0,0,90]){
                        cylinder(h=10, r=1.5, $fn=100, center=false);
                    }
                }  


                translate([6,50,50]){
                    rotate([90,0,0]){
                        cylinder(h=100, r=1.2, $fn=100, center=false);
                    }
                }  


            }
        }
