difference(){
	union(){
        translate([-1*(35/2)-14,7,0]){
           cube([14,4,10], center=false);
        }	   
        translate([-1*(35/2)-14,-11,0]){
           cube([14,4,10], center=false);
        }	   

        translate([-1*(35/2),-11,0]){
           cube([2,18,30], center=false);
        }	   
        translate([-1*(35/2)+33,-11,0]){
           cube([2,18,30], center=false);
        }	   


        translate([-1*(35/2),7,0]){
           cube([35,4,30], center=false);
        }	   
        translate([-1*(35/2),-11,0]){
           cube([35,4,30], center=false);
        }	   
       translate([0,0,0]){
            rotate(a = [0,0,0]) {
                cylinder(h=5, r=11, $fn=100, center=false);
            }
       }

	}
	union() {

       translate([0,0,4.5]){
            rotate(a = [0,0,90]) {
                cylinder(h=600, r=6, $fn=100, center=true);
            }
       }   
 
       translate([8,0,0]){
            rotate(a = [0,0,90]) {
                cylinder(h=600, r=1.5, $fn=100, center=true);
            }
       }  
       translate([-8,0,0]){
            rotate(a = [0,0,90]) {
                cylinder(h=600, r=1.5, $fn=100, center=true);
            }
       }    
       
       translate([-27,0,5]){
            rotate(a = [90,0,0]) {
                cylinder(h=600, r=1.8, $fn=100, center=true);
            }
       }  

       translate([(-23/2),0,15-9]){
            rotate(a = [90,0,0]) {
                cylinder(h=600, r=1.0, $fn=100, center=true);
            }
       }  
       translate([(+23/2),0,15-9]){
            rotate(a = [90,0,0]) {
                cylinder(h=600, r=1.0, $fn=100, center=true);
            }
       }  

       translate([(-23/2),0,15+9]){
            rotate(a = [90,0,0]) {
                cylinder(h=600, r=1.0, $fn=100, center=true);
            }
       }  
       translate([(+23/2),0,15+9]){
            rotate(a = [90,0,0]) {
                cylinder(h=600, r=1.0, $fn=100, center=true);
            }
       }  




        
	}
}