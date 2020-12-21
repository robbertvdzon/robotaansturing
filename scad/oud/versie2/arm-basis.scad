difference(){
	union(){
        translate([0,-5,0]){
           cube([5,10,180], center=false);
       }
       translate([0+5+25,-5,0]){
           cube([5,10,180], center=false);
       }


        translate([5+20,-5,150]){
           cube([5,10,60], center=false);
       }
        translate([5,-5,150]){
           cube([5,10,60], center=false);
       }
        translate([5,-5,200]){
           cube([20,10,10], center=false);
       }
        translate([5,-5,50]){
           cube([25,10,4], center=false);
       }

        
       translate([0,0,0]){
            rotate(a = [0,0,0]) {
                //cylinder(h=180, r=9.25, $fn=100, center=false);
            }
       }

       
	}
	union() {
        
       translate([0,0,-5]){
            rotate(a = [0,0,0]) {
             //  cylinder(h=195, r=6.45, $fn=100, center=false);
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
                //cylinder(h=600, r=1, $fn=100, center=false);
            }
       }			   
       translate([-30,0,170]){
            rotate(a = [0,90,0]) {
               // cylinder(h=600, r=1, $fn=100, center=false);
            }
       }			   
       translate([-30,0,205]){
            rotate(a = [0,90,0]) {
                cylinder(h=600, r=1, $fn=100, center=false);
            }
       }			   


       translate([0,30,20]){
            rotate(a = [90,0,0]) {
        //        cylinder(h=600, r=1, $fn=100, center=false);
            }
       }			
           translate([5+12.5,10,205]){
            rotate(a = [90,0,0]) {
                cylinder(h=600, r=1, $fn=100, center=false);
            }
       }			   
   


        
	}
}