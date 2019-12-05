difference(){
	union(){
        translate([0,0,0]){
          cube([20,9,3], center=false);
        }      
        translate([0,0,0]){
          cube([10,9,8], center=false);
        }      
        
	}
	union() {
       translate([11,2.25,-40]){
          cube([10,4.5,80], center=false);
       }	
        
	}
}