difference(){
	union(){
        
       translate([0,0,0]){
           cube([74,41,15], center=false);
       }
       translate([37-7-3.5,-10,0]){
           cube([7,10,35], center=false);
       }      
       translate([37+3.5,-10,0]){
           cube([7,10,35], center=false);
       }       

       translate([0,0,0]){
           cube([7,41,35], center=false);
       }      
       translate([74-7,0,0]){
           cube([7,41,35], center=false);
       }       

	}
	union() {
       translate([74/2,41/2,-1]){
            rotate(a = [0,0,90]) {
              cylinder(h=600, r=4, $fn=100, center=false);
            }
       }	
       translate([74/2,41/2,13]){
            rotate(a = [0,0,90]) {
              cylinder(h=600, r=13, $fn=100, center=false);
            }
       }	
 
       translate([74/2-23,41/2,-1]){
            rotate(a = [0,0,90]) {
              cylinder(h=600, r=3.8, $fn=100, center=false);
            }
       }	
       translate([74/2+23,41/2,-1]){
            rotate(a = [0,0,90]) {
              cylinder(h=600, r=3.8, $fn=100, center=false);
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

       translate([-10,41/2,7.5]){
            rotate(a = [0,90,0]) {
              cylinder(h=600, r=1.8, $fn=100, center=false);
            }
       }	
       translate([-10,41/2,15]){
            rotate(a = [0,90,0]) {
              cylinder(h=600, r=1.8, $fn=100, center=false);
            }
       }	

       translate([-10,41/2,22.5]){
            rotate(a = [0,90,0]) {
              cylinder(h=600, r=1.8, $fn=100, center=false);
            }
       }	
       translate([-10,41/2,30]){
            rotate(a = [0,90,0]) {
              cylinder(h=600, r=1.8, $fn=100, center=false);
            }
       }	


       translate([-10,-5,7.5]){
            rotate(a = [0,90,0]) {
              cylinder(h=600, r=1.8, $fn=100, center=false);
            }
       }	
       translate([-10,-5,15]){
            rotate(a = [0,90,0]) {
              cylinder(h=600, r=1.8, $fn=100, center=false);
            }
       }	

       translate([-10,-5,22.5]){
            rotate(a = [0,90,0]) {
              cylinder(h=600, r=1.8, $fn=100, center=false);
            }
       }	
       translate([-10,-5,30]){
            rotate(a = [0,90,0]) {
              cylinder(h=600, r=1.8, $fn=100, center=false);
            }
       }	

        
	}
}
