
difference(){
	union(){ 

        translate([0,0,0]){
            rotate(a = [0,0,0]) {
                cylinder(h=32, r=65/2+3, $fn=100, center=false);
            }
        }	
        translate([-8,0,0]){
           cube([16,100,5], center=false);
        }
        

	}
	union() {
        translate([0,0,5]){
            rotate(a = [0,0,0]) {
                cylinder(h=30, r=65/2, $fn=100, center=false);
            }
        }	


	}
}
