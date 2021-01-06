
difference(){
	union(){
        translate([30,7,-38]){
           cube([5,3,5], center=false);
        }   
        translate([30,7,-5]){
           cube([5,3,5], center=false);
        }   
        translate([0,0,-40]){
           cube([3,10,85], center=false);
        }   
        translate([0,0,-40]){
           cube([60,10,2], center=false);
        }   
        translate([0,0,0]){
           cube([60,10,2], center=false);
        }   
        translate([0,0,10]){
           cube([60,10,2], center=false);
        }   



    }
    union() {
        translate([60-5,5,-1]){
            rotate([0,0,0]){
                cylinder(h=28, r=1.5, $fn=100, center=false);
            }
        }
        translate([-1,5,30]){
            rotate([0,90,0]){
                cylinder(h=28, r=1.5, $fn=100, center=false);
            }
        }
        translate([-1,5,40]){
            rotate([0,90,0]){
                cylinder(h=28, r=1.5, $fn=100, center=false);
            }
        }
        
        translate([32.5,15,-2.5]){
            rotate([90,0,0]){
                cylinder(h=28, r=1.2, $fn=100, center=false);
            }
        }
        translate([32.5,15,-35.5]){
            rotate([90,0,0]){
                cylinder(h=28, r=1.2, $fn=100, center=false);
            }
        }        
    }


}
