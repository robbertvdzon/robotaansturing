difference(){
	union(){
        translate([-4.5,-40/2,0]){
           cube([9,40,9], center=false);
        }	   
       translate([0,0,0]){
            rotate(a = [0,0,0]) {
                cylinder(h=9, r=16.5, $fn=100, center=false);
            }
       }

	}
	union() {

       translate([0,0,4.5]){
            rotate(a = [0,0,90]) {
                cylinder(h=600, r=12.5, $fn=100, center=true);
            }
       }   
       translate([0,0,4.5]){
            rotate(a = [90,0,0]) {
                cylinder(h=600, r=1.0, $fn=100, center=true);
            }
       }   
       translate([0,0,4.5]){
            rotate(a = [0,90,0]) {
                cylinder(h=600, r=1.0, $fn=100, center=true);
            }
       }   


        
	}
}