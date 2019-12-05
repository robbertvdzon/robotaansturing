difference(){
	union(){
        
        translate([0,0,0]){
           cube([41,35,3], center=false);
        }    

	}
	union() {
		   
       translate([26,3.5,0]){
            rotate(a = [0,0,90]) {
                cylinder(h=600, r=1, $fn=100, center=true);
            }
       }			   
       translate([26,35-2.5,0]){
            rotate(a = [0,0,90]) {
                cylinder(h=600, r=1, $fn=100, center=true);
            }
       }	
       translate([30,21,-4]){
          cube([8,15,8], center=false);
        }      

        
	}
}