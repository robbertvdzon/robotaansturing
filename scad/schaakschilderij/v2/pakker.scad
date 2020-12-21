
difference(){
	union(){ 

        translate([-18,0,-6]){
           cube([40,6,12], center=false);
        }                
        translate([-18,0,-6]){
           cube([40,21,2], center=false);
        }                

            
	}
	union() {

        translate([0,0,0]){
            rotate([90,0,0]){
                cylinder(h=20, r=4, $fn=100, center=true);
            }   
        }
        translate([15,0,0]){
            rotate([90,0,0]){
                cylinder(h=20, r=4, $fn=100, center=true);
            }   
        }


        translate([0,3,0]){
            rotate([0,0,90]){
                cylinder(h=200, r=1.2, $fn=100, center=true);
            }   
        }
        translate([15,3,0]){
            rotate([0,0,90]){
                cylinder(h=200, r=1.2, $fn=100, center=true);
            }   
        }
               

	}
}
