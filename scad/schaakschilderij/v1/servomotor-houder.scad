
difference(){
	union(){ 

        translate([-5,0,0]){
           cube([37,22,10], center=false);
        }                
	}
	union() {
        translate([1,15,-1]){
           cube([26,13,15], center=false);
        }                

        translate([-10,-1,-1]){
           cube([37,13,12], center=false);
        }                

        translate([0,12-6,5]){
            rotate([0,90,0]){
                cylinder(h=200, r=1.5, $fn=100, center=true);
            }   
        }
        translate([0,12+6,5]){
            rotate([0,90,0]){
                cylinder(h=200, r=1.5, $fn=100, center=true);
            }   
        }

	}
}
