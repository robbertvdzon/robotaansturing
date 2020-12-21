
difference(){
	union(){        
        translate([0,0,0]){
           cube([15,65,3], center=false);
        }
        translate([0,0,63]){
           cube([15,65,3], center=false);
        }
        translate([-15,0,0]){
           cube([45,3,66], center=false);
        }
	}
	union() {

        translate([-10,10,10]){
            rotate(a = [90,0,0]) {
                cylinder(h=30, r=1, $fn=100, center=true);
            }
        }	

        translate([-10,10,50]){
            rotate(a = [90,0,0]) {
                cylinder(h=30, r=1, $fn=100, center=true);
            }
        }	

        translate([20,10,10]){
            rotate(a = [90,0,0]) {
                cylinder(h=30, r=1, $fn=100, center=true);
            }
        }	

        translate([20,10,50]){
            rotate(a = [90,0,0]) {
                cylinder(h=30, r=1, $fn=100, center=true);
            }
        }	



        translate([5,10,-5]){
            rotate(a = [0,0,0]) {
                cylinder(h=30, r=1, $fn=100, center=false);
            }
        }	
        translate([7.5,50,-10]){
            rotate(a = [0,0,0]) {
                cylinder(h=400, r=3.7, $fn=100, center=false);
            }
        }	


	}
}
