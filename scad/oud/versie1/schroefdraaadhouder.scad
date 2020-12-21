difference(){
	union(){
        translate([-4.5,-22/2,0]){
           cube([9,22,9], center=false);
        }	   

 
	}
	union() {

       translate([0,0,4.5]){
            rotate(a = [0,90,0]) {
                cylinder(h=600, r=1.0, $fn=100, center=true);
            }
       }   
       translate([0,0,4.5]){
            rotate(a = [90,0,0]) {
                cylinder(h=600, r=1.0, $fn=100, center=true);
            }
       }   

        
	}
}