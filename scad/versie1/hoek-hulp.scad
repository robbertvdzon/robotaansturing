difference(){
	union(){
        translate([0,0,0]){
           cube([15,15,3], center=false);
        }	   
        translate([0,0,0]){
           cube([3,15,15], center=false);
        }	   

 
	}
	union() {

       translate([0,5,11]){
            rotate(a = [0,90,0]) {
                cylinder(h=600, r=1.0, $fn=100, center=true);
            }
       }   
       translate([0,10,11]){
            rotate(a = [0,90,0]) {
                cylinder(h=600, r=1.0, $fn=100, center=true);
            }
       }   
       translate([11,7.5,0]){
            rotate(a = [0,0,90]) {
                cylinder(h=600, r=1.0, $fn=100, center=true);
            }
       }   

        
	}
}