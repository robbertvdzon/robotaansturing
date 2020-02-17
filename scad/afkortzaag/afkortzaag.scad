difference(){
	union(){

       translate([0,0,0]){
           cube([23,60,10], center=false);
       }

       translate([0,30,10]){
            rotate(a = [0,90,0]) {
              cylinder(h=25, r=10, $fn=100, center=false);
            }
       }	


	}
	union() {
§
       translate([12.5,7,-10]){
            rotate(a = [0,0,90]) {
              cylinder(h=100, r=1.5, $fn=100, center=false);
            }
       }	
       translate([12.5,60-7,-10]){
            rotate(a = [0,0,90]) {
              cylinder(h=100, r=1.5, $fn=100, center=false);
            }
       }	




        
	}
}
