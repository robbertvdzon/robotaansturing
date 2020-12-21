difference(){
	union(){
        
       translate([7.5,0,0]){
           cube([50,22,9], center=false);
       }




	}
	union() {

       translate([7.5+27/2,-1,4]){
           cube([23,30.1,7], center=false);
       }

 
       translate([7.5+2.5,8.5,-1]){
            rotate(a = [0,0,90]) {
              cylinder(h=600, r=1.3, $fn=100, center=false);
            }
       }	
       translate([7.5+47.5,8.5,-1]){
            rotate(a = [0,0,90]) {
              cylinder(h=600, r=1.3, $fn=100, center=false);
            }
       }	
//
       translate([7.5+25-13,11,-1]){
            rotate(a = [0,0,90]) {
              cylinder(h=600, r=1, $fn=100, center=false);
            }
       }	
       translate([7.5+25+13,11,-1]){
            rotate(a = [0,0,90]) {
              cylinder(h=600, r=1, $fn=100, center=false);
            }
       }	

        
	}
}
