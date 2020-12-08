
difference(){
	union(){ 

        translate([0,2,0]){
           cube([30,25,5], center=false);
        }                
	}
	union() {
        translate([15,27-15,0.001]){
            rotate([0,0,90]){
                cylinder(h=5, r1=0.1, r2=5.1, $fn=100, center=false);
            }   
        }
        translate([0,-5,-1]){
            rotate([0,0,45]){
                cube([10,10,15], center=false);
            }
        }                
        translate([30,-5,-1]){
            rotate([0,0,45]){
                cube([10,10,15], center=false);
            }
        }                

	}
}
