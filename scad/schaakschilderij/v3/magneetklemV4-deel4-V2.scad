
difference(){
	union(){
        translate([3,-18,25]){
           cube([75-6,17,2], center=false);
        }        
        translate([0,-15,25]){
           cube([75,10,2], center=false);
        }        
       
        translate([6.5,-15,22]){
           cube([75-13,10,3], center=false);
        }        

        translate([75/2+9.5+15,-10,12]){
            rotate([0,0,90]){
                cylinder(h=10, r=4, $fn=100, center=false);
            }
        }          

        translate([-9.5+75/2,50,17.5]){
            rotate([90,0,0]){
          //      cylinder(h=200, r=4.15, $fn=100, center=false);
            }
        }
        translate([9.5+75/2,50,17.5]){
            rotate([90,0,0]){
           //     cylinder(h=200, r=4.15, $fn=100, center=false);
            }
        }        
        translate([-10,-10,17.5-11]){
            rotate([0,90,0]){
         //       cylinder(h=200, r=4.15, $fn=100, center=false);
            }
        }     
        
        
          


        
        
	}
	union() {
        translate([75/2-7,-25,21]){
           cube([14,10,8], center=false);
        }        


        translate([3,-10,-1]){
            rotate([0,0,90]){
                cylinder(h=200, r=1.2, $fn=100, center=false);
            }
        }        
        translate([75-3,-10,-1]){
            rotate([0,0,90]){
                cylinder(h=200, r=1.2, $fn=100, center=false);
            }
        }        

        translate([75/2-9.5,-10,-20]){
            rotate([0,0,90]){
                cylinder(h=100, r=1.2, $fn=100, center=false);
            }
        }        
        translate([75/2+9.5,-10,-20]){
            rotate([0,0,90]){
                cylinder(h=100, r=1.2, $fn=100, center=false);
            }
        }        
        translate([75/2+9.5+15,-10,-20]){
            rotate([0,0,90]){
                cylinder(h=100, r=1.2, $fn=100, center=false);
            }
        }        



   


	}
}
