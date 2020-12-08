difference(){
	union(){
        
       translate([0,0,0]){
           cube([42,62,4], center=false);
       }
       translate([0,0,0]){
           cube([8,15+41,24], center=false);
       }
       translate([42-4-0,0,0]){
           cube([4,7.5,24], center=false);
       }
       translate([42-4- 0,41+7.5,0]){
           cube([4,7.5,24], center=false);
       }
       translate([-1,15+41,0]){
           cube([66,8,24], center=false);
       }
       
 
       
	
	}
	union() {
       translate([-30,15+41+4,14-5]){
            rotate(a = [0,90,0]) {
              cylinder(h=600, r=1.7, $fn=100, center=false);
            }
       }       
       translate([-30,15+41+4,14+5]){
            rotate(a = [0,90,0]) {
              cylinder(h=600, r=1.7, $fn=100, center=false);
            }
       }       

       translate([-30,3.75,4+5]){
            rotate(a = [0,90,0]) {
              cylinder(h=600, r=1.3, $fn=100, center=false);
            }
       }       
       translate([-30,3.75,4+5+10]){
            rotate(a = [0,90,0]) {
              cylinder(h=600, r=1.3, $fn=100, center=false);
            }
       }       
       translate([-30,41+7.5+3.75,4+5]){
            rotate(a = [0,90,0]) {
              cylinder(h=600, r=1.3, $fn=100, center=false);
            }
       }       
       translate([-30,41+7.5+3.75,4+5+10]){
            rotate(a = [0,90,0]) {
              cylinder(h=600, r=1.3, $fn=100, center=false);
            }
       }       
       translate([-30,18,14]){
            rotate(a = [0,90,0]) {
              cylinder(h=600, r=1.3, $fn=100, center=false);
            }
       }       
       
	}
}
