
difference(){
	union(){        
        translate([0,-20,0]){
           cube([60,50,3], center=false);
        }
        translate([25,-20,-28]){
           cube([20,50,3], center=false);
        }
        translate([0,-20,-28-15]){
           cube([60,3,18], center=false);
        }
        translate([0,-20,-32]){
           cube([60,7,7], center=false);
        }
        
        translate([0,-20,-28-15+43]){
           cube([60,3,18], center=false);
        }
        translate([0,-20,-28-15+43]){
           cube([60,7,7], center=false);
        }
        
       
        
	}
	union() {



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
        
        
        translate([6.5,25,0]){
            rotate(a = [0,0,90]) {
                cylinder(h=30, r=1.5, $fn=100, center=true);
            }
        }	
        translate([60-6.5,25,0]){
            rotate(a = [0,0,90]) {
                cylinder(h=30, r=1.5, $fn=100, center=true);
            }
        }	

        translate([6.5,25-9,0]){
            rotate(a = [0,0,90]) {
                cylinder(h=30, r=1.5, $fn=100, center=true);
            }
        }	
        translate([60-6.5,25-9,0]){
            rotate(a = [0,0,90]) {
                cylinder(h=30, r=1.5, $fn=100, center=true);
            }
        }	
        translate([10,7,-1]){
           cube([40,25,5], center=false);
        }

        translate([35,30-8,0]){
            rotate(a = [0,0,90]) {
                cylinder(h=300, r=1.5, $fn=100, center=true);
            }
        }	




	}
}
