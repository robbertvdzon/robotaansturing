difference(){
	union(){
        
       translate([2,10,0]){
           cube([70,21,8], center=false);
       }

       
	
	}
	union() {

       
       


       translate([-10,41/2+6,4]){
            rotate(a = [0,90,0]) {
              cylinder(h=600, r=1.8, $fn=100, center=false);
            }
       }	
       translate([-10,41/2-6,4]){
            rotate(a = [0,90,0]) {
              cylinder(h=600, r=1.8, $fn=100, center=false);
            }
       }	
       
       
	}
}
