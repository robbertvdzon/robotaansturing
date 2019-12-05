
difference(){
	union(){        
        translate([0,0,0]){
           cube([15,20,32], center=false);
        }
	

        
	}
	union() {

        translate([-20,10,16]){
            rotate(a = [0,90,0]) {
                cylinder(h=400, r=1.5, $fn=100, center=false);
            }
        }	
        translate([7.5,50,16]){
            rotate(a = [90,0,0]) {
                cylinder(h=400, r=2.5, $fn=100, center=false);
            }
        }
        translate([7.5,15,-10]){
            rotate(a = [0,0,0]) {
                cylinder(h=400, r=1.5, $fn=100, center=false);
            }
        }	
        translate([7.5,5,-10]){
            rotate(a = [0,0,0]) {
                cylinder(h=400, r=1.5, $fn=100, center=false);
            }
        }	

	


	}
}
