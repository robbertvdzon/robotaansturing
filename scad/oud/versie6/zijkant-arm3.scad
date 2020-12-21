difference(){
	union(){
        
       translate([0,0,0]){
           cube([4,30,150], center=false);
       }


	}
	union() {

       translate([-10,15+6,5]){
            rotate(a = [0,90,0]) {
              cylinder(h=600, r=1.3, $fn=100, center=false);
            }
       }	
       translate([-10,15,5]){
            rotate(a = [0,90,0]) {
              cylinder(h=600, r=1.3, $fn=100, center=false);
            }
       }	
       translate([-10,15-6,5]){
            rotate(a = [0,90,0]) {
              cylinder(h=600, r=1.3, $fn=100, center=false);
            }
       }	


       translate([-10,15+6,150-5]){
            rotate(a = [0,90,0]) {
              cylinder(h=600, r=1.3, $fn=100, center=false);
            }
       }	
       translate([-10,15,150-5]){
            rotate(a = [0,90,0]) {
              cylinder(h=600, r=1.3, $fn=100, center=false);
            }
       }
       translate([-10,15-6,150-5]){
            rotate(a = [0,90,0]) {
              cylinder(h=600, r=1.3, $fn=100, center=false);
            }
       }	


        
	}
}
