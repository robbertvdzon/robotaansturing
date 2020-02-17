difference(){
	union(){
      
       translate([2,0,0]){
           cube([70,41,14], center=false);
       }
       
     
       
       translate([2,41/2,5]){
            rotate(a = [0,90,0]) {
              cylinder(h=2, r=33, $fn=100, center=false);
            }
       }	
       translate([2,41/2,5]){
            rotate(a = [0,90,0]) {
              cylinder(h=11, r=30, $fn=100, center=false);
            }
       }	
       translate([11,41/2,5]){
            rotate(a = [0,90,0]) {
              cylinder(h=2, r=33, $fn=100, center=false);
            }
       }	

       translate([74-13,41/2,5]){
            rotate(a = [0,90,0]) {
              cylinder(h=2, r=33, $fn=100, center=false);
            }
       }	
       translate([74-13,41/2,5]){
            rotate(a = [0,90,0]) {
              cylinder(h=11, r=30, $fn=100, center=false);
            }
       }	
       translate([74-4,41/2,5]){
            rotate(a = [0,90,0]) {
              cylinder(h=2, r=33, $fn=100, center=false);
            }
       }	

   

	}
	union() {
     
       translate([74/2,41/2,10]){
            rotate(a = [0,0,90]) {
              cylinder(h=5, r=13, $fn=100, center=false);
            }
       }
        
        translate([-10,-30,-60]){
           cube([100,100,60], center=false);
       }  
      
        translate([74/2,41/2,-1]){
            rotate(a = [0,0,90]) {
              cylinder(h=600, r=4, $fn=100, center=false);
            }
       }	
 
       translate([14,41/2,-1]){
            rotate(a = [0,0,90]) {
              cylinder(h=600, r=4, $fn=100, center=false);
            }
       }	
       translate([14+46,41/2,-1]){
            rotate(a = [0,0,90]) {
              cylinder(h=600, r=4, $fn=100, center=false);
            }
       }	
       
       translate([21.5,5,-10]){
            rotate(a = [0,0,90]) {
              cylinder(h=600, r=1.2, $fn=100, center=false);
            }
       }		   
       translate([21.5+31,5,-10]){
            rotate(a = [0,0,90]) {
              cylinder(h=600, r=1.2, $fn=100, center=false);
            }
       }		   
       translate([21.5+31,5+31,-10]){
            rotate(a = [0,0,90]) {
              cylinder(h=600, r=1.2, $fn=100, center=false);
            }
       }		   
       translate([21.5,5+31,-10]){
            rotate(a = [0,0,90]) {
              cylinder(h=600, r=1.2, $fn=100, center=false);
            }
       }




       translate([-10,41/2,5]){
            rotate(a = [0,90,0]) {
              cylinder(h=600, r=1.8, $fn=100, center=false);
            }
       }	
       	
       translate([-10,41/2+6,5]){
            rotate(a = [0,90,0]) {
              cylinder(h=600, r=1.8, $fn=100, center=false);
            }
       }	
       translate([-10,41/2-6,5]){
            rotate(a = [0,90,0]) {
              cylinder(h=600, r=1.8, $fn=100, center=false);
            }
       }	

	

        
	}
}
