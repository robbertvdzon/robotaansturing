difference(){
	union(){
        
       translate([4,0,0]){
           cube([66,60,15], center=false);
       }


	}
	union() {

       translate([74/2-20,60/2,-1]){
            rotate(a = [0,0,90]) {
              cylinder(h=600, r=4, $fn=100, center=false);
            }
       }	
       translate([74/2+20,60/2,-1]){
            rotate(a = [0,0,90]) {
              cylinder(h=600, r=4, $fn=100, center=false);
            }
       }	
       translate([74/2-20-20,60/2-4,-5]){
           cube([20,8,25], center=false);
       }
       translate([74/2+20,60/2-4,-5]){
           cube([20,8,25], center=false);
       }
       
       
        translate([74/2,60/2,-4.5]){
            rotate(a = [0,0,90]) {
                cylinder(h=600, r=6, $fn=100, center=false);
            }
       }   

        translate([74/2,60/2,10]){
            rotate(a = [0,0,90]) {
                cylinder(h=600, r=15, $fn=100, center=false);
            }
       }   
 

       translate([74/2+8,60/2,0]){
            rotate(a = [0,0,90]) {
                cylinder(h=600, r=1.5, $fn=100, center=false);
            }
       }  
       translate([74/2-8,60/2,0]){
            rotate(a = [0,0,90]) {
                cylinder(h=600, r=1.5, $fn=100, center=false);
            }
       }    
       
       translate([74/2-18,60,7.5]){
            rotate(a = [90,0,0]) {
                cylinder(h=600, r=1.2, $fn=100, center=false);
            }
       }   
       translate([74/2+18,60,7.5]){
            rotate(a = [90,0,0]) {
                cylinder(h=600, r=1.2, $fn=100, center=false);
            }
       }   

        
	}
}
