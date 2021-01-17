
difference(){
	union(){



        // groot blok
        translate([10,-33,20]){
           cube([56,27,2], center=false);
        }

        // print gat verhogers
        translate([13,-30,20]){
            rotate([0,0,0]){
                cylinder(h=12, r=3, $fn=100, center=false);
            }
        }  
        translate([13+50,-30,20]){
            rotate([0,0,0]){
                cylinder(h=12, r=3, $fn=100, center=false);
            }
        }  
        
	}
	union() {

        // print gaten
        translate([13,-30,0]){
            rotate([0,0,0]){
                cylinder(h=200, r=1.2, $fn=100, center=false);
            }
        }  
        translate([13+50,-30,0]){
            rotate([0,0,0]){
                cylinder(h=200, r=1.2, $fn=100, center=false);
            }
        }  


        // schuifcontact gaten
        translate([20,-10,6.5]){
            rotate([0,0,0]){
                cylinder(h=200, r=2, $fn=100, center=false);
            }
        }  
        translate([55,-29,6.5]){
            rotate([0,0,0]){
                cylinder(h=200, r=2, $fn=100, center=false);
            }
        }  
        translate([-9.5+75/2,-29,17.5]){
            rotate([0,0,0]){
                cylinder(h=200, r=2, $fn=100, center=false);
            }
        }  
        translate([+9.5+75/2,-10,17.5]){
            rotate([0,0,0]){
                cylinder(h=200, r=2, $fn=100, center=false);
            }
        }  

        // gaten voor draad
        translate([75/2,-68+97/2,-1]){
            rotate([0,0,90]){
                cylinder(h=200, r=3, $fn=100, center=false);
            }
        }

        // schroefgaten voor deksel
        translate([75/2+18,-68+97/2+10,-1]){
            rotate([0,0,90]){
                cylinder(h=200, r=1.2, $fn=100, center=false);
            }
        }
        translate([75/2-18,-68+97/2-10,-1]){
            rotate([0,0,90]){
                cylinder(h=200, r=1.2, $fn=100, center=false);
            }
        }


   
        


	}
}
