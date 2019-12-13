difference(){
	union(){
        
       translate([0,0,0]){
           cube([16,40,2], center=true);
       }
        translate([0,5.5,3]){
           cube([16,3,6], center=true);
       }
        translate([0,-5.5,3]){
           cube([16,3,6], center=true);
       }

	}
	union() {
        
       translate([0,15,0]){
            rotate(a = [0,0,90]) {
              cylinder(h=600, r=1, $fn=100, center=true);
            }
       }			   
       translate([0,-15,0]){
            rotate(a = [0,0,90]) {
              cylinder(h=600, r=1, $fn=100, center=true);
            }
       }			   
		   

        
	}
}