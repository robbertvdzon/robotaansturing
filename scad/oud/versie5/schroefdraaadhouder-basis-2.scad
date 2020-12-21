difference(){
	union(){
        
       translate([4,0,0]){
           cube([66,41,12], center=false);
       }


	}
	union() {

 
       translate([74/2-23,41/2,-1]){
            rotate(a = [0,0,90]) {
              cylinder(h=600, r=7.2, $fn=100, center=false);
            }
       }	
       translate([74/2+23,41/2,-1]){
            rotate(a = [0,0,90]) {
              cylinder(h=600, r=7.2, $fn=100, center=false);
            }
       }	
       
       
        translate([74/2,41/2,-4.5]){
            rotate(a = [0,0,90]) {
                cylinder(h=600, r=6, $fn=100, center=false);
            }
       }   

        translate([74/2,41/2,4.5]){
            rotate(a = [0,0,90]) {
                cylinder(h=600, r=15, $fn=100, center=false);
            }
       }   
 

       translate([74/2+8,41/2,0]){
            rotate(a = [0,0,90]) {
                cylinder(h=600, r=1.5, $fn=100, center=false);
            }
       }  
       translate([74/2-8,41/2,0]){
            rotate(a = [0,0,90]) {
                cylinder(h=600, r=1.5, $fn=100, center=false);
            }
       }    
       


        
	}
}
