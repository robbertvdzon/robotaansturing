
difference(){
	union(){

        translate([6.5,-15,-5]){
           cube([75-13,10,3], center=false);
        }        

        translate([6.5-3,-15-3,-8]){
           cube([75-13+6,10+6,3], center=false);
        }        
        
	}
	union() {
        translate([-9.5+75/2,50,17.5]){
            rotate([90,0,0]){
                cylinder(h=200, r=4.15, $fn=100, center=false);
            }
        }
        translate([9.5+75/2,50,17.5]){
            rotate([90,0,0]){
                cylinder(h=200, r=4.15, $fn=100, center=false);
            }
        }        
        translate([-10,-10,17.-11]){
            rotate([0,90,0]){
                cylinder(h=200, r=4.15, $fn=100, center=false);
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
