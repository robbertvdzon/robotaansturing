difference(){
	union(){
        translate([0,-5,0]){
           cube([5,10,180], center=false);
       }
       translate([0+5+30,-5,0]){
           cube([5,10,180], center=false);
       }


       translate([5+25,-5,150]){
           cube([5,10,60], center=false);
       }
       translate([5,-5,150]){
           cube([5,10,60], center=false);
       }
       translate([5,-5,200]){
           cube([30,10,10], center=false);
       }
       translate([15,-5,200]){
           cube([10,15,10], center=false);
       }
       translate([5,-5,60]){
           cube([30,10,4], center=false);
       }

	}
	union() {       
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
       translate([-30,0,85]){
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
           translate([5+15,10,205]){
            rotate(a = [90,0,0]) {
                cylinder(h=600, r=1, $fn=100, center=false);
            }
       }			   
   


        
	}
}