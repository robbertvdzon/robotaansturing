difference(){
	union(){
        
       translate([0,5.5,0]){
           cube([4,30,30], center=false);
       }
       translate([0,5.5,0]){
           cube([8,3,30], center=false);
       }


	}
	union() {

       translate([-10,41/2+6,7.5]){
            rotate(a = [0,90,0]) {
              cylinder(h=600, r=1.3, $fn=100, center=false);
            }
       }	
       translate([-10,41/2-6,7.5]){
            rotate(a = [0,90,0]) {
              cylinder(h=600, r=1.3, $fn=100, center=false);
            }
       }	

        
	}
}