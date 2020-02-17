difference(){
	union(){
        
       translate([0,0,0]){
           cube([74,41,12], center=false);
       }

       
	
	}
	union() {


        translate([74/2,41/2,12]){
          rotate(a = [0,0,45]) {
           	union(){
               cube([50,28,9], center=true);
               translate([36.6/2,0,-20]){
                    rotate(a = [0,0,90]) {
                      cylinder(h=600, r=2, $fn=100, center=false);
                    }
               }                
               translate([-36.6/2,0,-20]){
                    rotate(a = [0,0,90]) {
                      cylinder(h=600, r=2, $fn=100, center=false);
                    }
               }                
            }
          }
       }

       translate([74/2,41/2,-1]){
            rotate(a = [0,0,90]) {
              cylinder(h=600, r=14, $fn=100, center=false);
            }
       }	
 
       translate([74/2-23,41/2,-1]){
            rotate(a = [0,0,90]) {
              cylinder(h=600, r=4, $fn=100, center=false);
            }
       }	
       translate([74/2+23,41/2,-1]){
            rotate(a = [0,0,90]) {
              cylinder(h=600, r=4, $fn=100, center=false);
            }
       }	
       
       translate([74-6,6,-1]){
            rotate(a = [0,0,90]) {
              cylinder(h=600, r=1.3, $fn=100, center=false);
            }
       }	
       translate([6,41-6,-1]){
            rotate(a = [0,0,90]) {
              cylinder(h=600, r=1.3, $fn=100, center=false);
            }
       }	
       
       


       translate([-10,41/2+6,6]){
            rotate(a = [0,90,0]) {
              cylinder(h=600, r=1.8, $fn=100, center=false);
            }
       }	
       translate([-10,41/2-6,6]){
            rotate(a = [0,90,0]) {
              cylinder(h=600, r=1.8, $fn=100, center=false);
            }
       }	
       
       
       translate([74/2-23,60,6]){
            rotate(a = [90,0,0]) {
                cylinder(h=600, r=1.2, $fn=100, center=false);
            }
       }   
       translate([74/2+23,60,6]){
            rotate(a = [90,0,0]) {
                cylinder(h=600, r=1.2, $fn=100, center=false);
            }
       }         
       
	}
}
