difference(){
	union(){
        
       translate([0,0,0]){
            rotate(a = [0,0,0]) {
                cylinder(h=180, r=9.25, $fn=100, center=false);
            }
       }
       
       
	}
	union() {
        
       translate([0,0,-5]){
            rotate(a = [0,0,0]) {
                cylinder(h=195, r=6.45, $fn=100, center=false);
            }
       }
        
       translate([-30,0,5]){
            rotate(a = [0,90,0]) {
                cylinder(h=600, r=1, $fn=100, center=false);
            }
       }			   
       translate([-30,0,40]){
            rotate(a = [0,90,0]) {
                cylinder(h=600, r=1, $fn=100, center=false);
            }
       }			   
       translate([-30,0,23]){
            rotate(a = [0,90,0]) {
                cylinder(h=600, r=1, $fn=100, center=false);
            }
       }			   
       translate([-30,0,75]){
            rotate(a = [0,90,0]) {
                cylinder(h=600, r=1, $fn=100, center=false);
            }
       }			   
       translate([-30,0,160]){
            rotate(a = [0,90,0]) {
                cylinder(h=600, r=1, $fn=100, center=false);
            }
       }			   
       translate([-30,0,170]){
            rotate(a = [0,90,0]) {
                cylinder(h=600, r=1, $fn=100, center=false);
            }
       }			   


       translate([0,30,70]){
            rotate(a = [90,0,0]) {
                cylinder(h=600, r=1, $fn=100, center=false);
            }
       }			   
       translate([0,30,20]){
            rotate(a = [90,0,0]) {
                cylinder(h=600, r=1, $fn=100, center=false);
            }
       }			   


        
	}
}