
difference(){
	union(){ 

        translate([-5, -8.5,0]){
           cube([10,17,1], center=false);
        }                
        translate([0+5,0,0]){
            rotate([0,0,0]){
                cylinder(h=1, r=8.5, $fn=100, center=false);
            }   
        }
        translate([0-5,0,0]){
            rotate([0,0,0]){
                cylinder(h=1, r=8.5, $fn=100, center=false);
            }   
        }
        translate([-5, -1.5,0]){
           cube([10,3,30], center=false);
        }                
        translate([0,1.5,3]){
            rotate([90,0,0]){
                cylinder(h=3, r=12, $fn=100, center=false);
            }   
        }
        translate([0,1.5,32]){
            rotate([90,0,0]){
                cylinder(h=3, r=8, $fn=100, center=false);
            }   
        }





	}
	union() {
        translate([-40, -40,-20]){
           cube([80,80,20], center=false);
        }                

	}
}
