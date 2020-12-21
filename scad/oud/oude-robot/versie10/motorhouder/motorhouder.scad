
difference(){
	union(){        
        translate([0,-20,0]){
           cube([60,30,3], center=false);
        }
        
        translate([0,-20,-28-15+43]){
           cube([60,3,28], center=false);
        }
        translate([0,-20,-28-15+43]){
           cube([60,7,7], center=false);
        }
        
        translate([35,-20,3+22]){
           cube([13,30,3], center=false);
        }
       
        
	}
	union() {

        translate([53.5-13,0,0]){
            rotate(a = [0,0,90]) {
                cylinder(h=100, r=1.5, $fn=100, center=true);
            }
        }	


        translate([5,0,12]){
            rotate(a = [90,0,0]) {
                cylinder(h=300, r=1.5, $fn=100, center=true);
            }
        }	
        translate([55,0,12]){
            rotate(a = [90,0,0]) {
                cylinder(h=300, r=1.5, $fn=100, center=true);
            }
        }	
        
        translate([5,0,-37]){
            rotate(a = [90,0,0]) {
                cylinder(h=300, r=1.5, $fn=100, center=true);
            }
        }	
        translate([55,0,-37]){
            rotate(a = [90,0,0]) {
                cylinder(h=300, r=1.5, $fn=100, center=true);
            }
        }	
        
        
        translate([6.5,25-20,0]){
            rotate(a = [0,0,90]) {
                cylinder(h=30, r=1.5, $fn=100, center=true);
            }
        }	
        translate([60-6.5,25-20,0]){
            rotate(a = [0,0,90]) {
                cylinder(h=30, r=1.5, $fn=100, center=true);
            }
        }	

        translate([6.5,25-9-20,0]){
            rotate(a = [0,0,90]) {
                cylinder(h=30, r=1.5, $fn=100, center=true);
            }
        }	
        translate([60-6.5,25-9-20,0]){
            rotate(a = [0,0,90]) {
                cylinder(h=30, r=1.5, $fn=100, center=true);
            }
        }	
        translate([9.5,7-20,-1]){
           cube([41,25,5], center=false);
        }




	}
}
