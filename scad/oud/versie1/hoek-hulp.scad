difference(){
	union(){
        translate([8.5,-10,0]){
           cube([10,30,3], center=false);
        }	   

        translate([0,0,0]){
           cube([27,10,3], center=false);
        }	   
        translate([0,0,0]){
           cube([3,10,20], center=false);
        }	   
        translate([24,0,0]){
           cube([3,10,20], center=false);
        }	   

 
	}
	union() {

       translate([0,5,13.5]){
            rotate(a = [0,90,0]) {
                cylinder(h=600, r=1.0, $fn=100, center=true);
            }
       }   
       translate([13.5,-6,0]){
            rotate(a = [0,0,90]) {
                cylinder(h=600, r=1.0, $fn=100, center=true);
            }
       }   
       translate([13.5,16,0]){
            rotate(a = [0,0,90]) {
                cylinder(h=600, r=1.0, $fn=100, center=true);
            }
       }   

        
	}
}