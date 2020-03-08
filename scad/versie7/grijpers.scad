difference(){
	union(){
        
       translate([0,0,0]){
           cube([50,12,4], center=false);
       }
       translate([0,0,0]){
           cube([8,12,10], center=false);
       }




	
	}
	union() {
       translate([4,20,4]){
            rotate(a = [90,0,0]) {
              cylinder(h=600, r=1.3, $fn=100, center=false);
            }
       }	
       translate([4,5,-20]){
            rotate(a = [0,0,90]) {
              cylinder(h=600, r=1.3, $fn=100, center=false);
            }
       }	

       
	}
}
