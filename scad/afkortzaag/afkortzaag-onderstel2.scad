difference(){
	union(){

       translate([40,65,55-8]){
           cube([20,30,8], center=false);
       }


	}
	union() {
       translate([50,60-7+35,-10]){
            rotate(a = [0,0,90]) {
              cylinder(h=100, r=1.5, $fn=100, center=false);
            }
       }	
       translate([50,60-7+20,-10]){
            rotate(a = [0,0,90]) {
              cylinder(h=100, r=1.5, $fn=100, center=false);
            }
       }	



        
	}
}
