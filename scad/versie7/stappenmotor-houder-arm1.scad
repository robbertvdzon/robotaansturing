difference(){
	union(){
        
       translate([0,0,0]){
           cube([75,55,14], center=false);
       }
       
       
       translate([0,55/2,7]){
            rotate(a = [0,90,0]) {
              cylinder(h=9, r=35, $fn=100, center=false);
            }
       }	       
       translate([75-9,55/2,7]){
            rotate(a = [0,90,0]) {
              cylinder(h=9, r=35, $fn=100, center=false);
            }
       }	       
       
	}
	union() {
        
       translate([4.5,70,7]){
            rotate(a = [90,0,0]) {
              cylinder(h=200, r=1.2, $fn=100, center=false);
            }
       }
       translate([75-4.5,70,7]){
            rotate(a = [90,0,0]) {
              cylinder(h=200, r=1.2, $fn=100, center=false);
            }
       }
        
        translate([-10,-30,-60]){
           cube([100,100,60], center=false);
       }  
       
       translate([75/2,41/2+7,10]){
            rotate(a = [0,0,90]) {
              cylinder(h=600, r=21, $fn=100, center=false);
            }
       }	
        
       translate([75/2,41/2+7,-1]){
            rotate(a = [0,0,90]) {
              cylinder(h=600, r=4, $fn=100, center=false);
            }
       }	
 
       translate([75/2-23,41/2+7,-2]){
            rotate(a = [0,0,90]) {
              cylinder(h=600, r=4, $fn=100, center=false);
            }
       }	
       translate([75/2+23,41/2+7,-2]){
            rotate(a = [0,0,90]) {
              cylinder(h=600, r=4, $fn=100, center=false);
            }
       }	
       
       
       
       translate([75/2-47/2,55/2-47/2,-10]){
            rotate(a = [0,0,90]) {
              cylinder(h=600, r=2.5, $fn=100, center=false);
            }
       }		   
       translate([75/2+47/2,55/2-47/2,-10]){
            rotate(a = [0,0,90]) {
              cylinder(h=600, r=2.5, $fn=100, center=false);
            }
       }		   
       translate([75/2-47/2,55/2+47/2,-10]){
            rotate(a = [0,0,90]) {
              cylinder(h=600, r=2.5, $fn=100, center=false);
            }
       }		   
       translate([75/2+47/2,55/2+47/2,-10]){
            rotate(a = [0,0,90]) {
              cylinder(h=600, r=2.5, $fn=100, center=false);
            }
       }



       translate([-10,41/2+8+7,7.5]){
            rotate(a = [0,90,0]) {
              cylinder(h=600, r=1.8, $fn=100, center=false);
            }
       }	
       translate([-10,41/2-0+7,7.5]){
            rotate(a = [0,90,0]) {
              cylinder(h=600, r=1.8, $fn=100, center=false);
            }
       }	
       translate([-10,41/2-8+7,7.5]){
            rotate(a = [0,90,0]) {
              cylinder(h=600, r=1.8, $fn=100, center=false);
            }
       }	
	}
}
