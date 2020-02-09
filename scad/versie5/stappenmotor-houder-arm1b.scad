difference(){
	union(){
        
       translate([0,0,0]){
           cube([74,7,15], center=false);
       }
       translate([37-7,-13,0]){
           cube([7,20,35], center=false);
       }
       translate([37+7,-13,0]){
           cube([7,20,35], center=false);
       }


	}
	union() {
       translate([-10,-8, 27.5]){
            rotate(a = [0,90,0]) {
              cylinder(h=600, r=1.8, $fn=100, center=false);
            }
       }

       translate([74/2-23,100,7.5]){
            rotate(a = [90,0,0]) {
              cylinder(h=600, r=1.8, $fn=100, center=false);
            }
       }	
       translate([74/2+23,100,7.5]){
            rotate(a = [90,0,0]) {
              cylinder(h=600, r=1.8, $fn=100, center=false);
            }
       }	
        
	}
}
