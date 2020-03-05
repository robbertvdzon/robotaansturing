difference(){
	union(){
        
       translate([0,0,0]){
           cube([31+4,36,20], center=false);
       }


       
	
	}
	union() {
       translate([-4,4,(20-12.7)/2]){
           cube([31,36,12.7], center=false);
       }

       translate([31/2,36/2-5,-2]){
            rotate(a = [0,0,90]) {
              cylinder(h=600, r=1.2, $fn=100, center=false);
            }
       }	
       translate([31/2,36/2+5,-2]){
            rotate(a = [0,0,90]) {
              cylinder(h=600, r=1.2, $fn=100, center=false);
            }
       }	
       translate([0,36-10,10]){
            rotate(a = [0,90,0]) {
              cylinder(h=600, r=1.2, $fn=100, center=false);
            }
       }	
       
	}
}
