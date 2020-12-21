
difference(){
	union(){ 

              
            

        translate([-30, -30,0]){
           cube([60,60,1.8], center=false);
        }                





	}
	union() {

        translate([-25, -25,1]){
           cube([50,40,1.8], center=false);
        }                

        translate([0+10,20,0.5]){
            rotate([0,0,0]){
                cylinder(h=5, r=3, $fn=100, center=false);
            }   
        }
        translate([0-10,20,0.5]){
            rotate([0,0,0]){
                cylinder(h=5, r=3, $fn=100, center=false);
            }   
        }

	}
}
