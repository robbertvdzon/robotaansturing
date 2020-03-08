difference(){
	union(){
        
       translate([0,0,0]){
           cube([42,34,4], center=false);
       }
       translate([0,0,0]){
           cube([8,34,16], center=false);
       }
       translate([42-4-10,0,0]){
           cube([4,5,16], center=false);
       }
       translate([42-4-10,34-5,0]){
           cube([4,5,16], center=false);
       }
       translate([-(66-49)/2,34,0]){
           cube([66,8,16], center=false);
       }
       
 
       
	
	}
	union() {
       translate([-30,38,8-5]){
            rotate(a = [0,90,0]) {
              cylinder(h=600, r=1.7, $fn=100, center=false);
            }
       }       
       translate([-30,38,8+5]){
            rotate(a = [0,90,0]) {
              cylinder(h=600, r=1.7, $fn=100, center=false);
            }
       }       

       translate([-30,2.5,10]){
            rotate(a = [0,90,0]) {
              cylinder(h=600, r=1.3, $fn=100, center=false);
            }
       }       
       translate([-30,2.5+29,10]){
            rotate(a = [0,90,0]) {
              cylinder(h=600, r=1.3, $fn=100, center=false);
            }
       }       
       translate([-30,2.5+8.5,10]){
            rotate(a = [0,90,0]) {
              cylinder(h=600, r=1.3, $fn=100, center=false);
            }
       }       
       
	}
}
