difference(){
	union(){
        

       translate([0,0,0]){
            rotate(a = [0,0,0]) {
                cylinder(h=3, r=12.5, $fn=100, center=false);
            }
       }
       translate([0,-11,0]){
           cube([30,22,3], center=false);
       }
       translate([20,-11,0]){
           cube([10,3,10], center=false);
       }
       translate([20,8,0]){
           cube([10,3,10], center=false);
       }

	}
	union() {
       translate([0,0,-10]){
            rotate(a = [0,0,0]) {
                cylinder(h=100, r=2.5, $fn=100, center=false);
            }
       }
       translate([0,-6,-10]){
            rotate(a = [0,0,0]) {
                cylinder(h=100, r=1.3, $fn=100, center=false);
            }
       }
       translate([0,6,-10]){
            rotate(a = [0,0,0]) {
                cylinder(h=100, r=1.3, $fn=100, center=false);
            }
       }
       translate([25,30,7]){
            rotate(a = [90,0,0]) {
                cylinder(h=100, r=1.3, $fn=100, center=false);
            }
       }
        
		   

        
	}
}