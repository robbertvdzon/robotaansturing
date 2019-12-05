
difference(){
	union(){        
        translate([0,0,0]){
           cube([80,30,3], center=false);
        }
        translate([0,0,-28]){
           cube([80,3,48], center=false);
        }
        translate([25,0,-28]){
           cube([55,30,3], center=false);
        }
        
       
        
	}
	union() {


        translate([5,0,13]){
            rotate(a = [90,0,0]) {
                cylinder(h=300, r=1.5, $fn=100, center=true);
            }
        }	
        translate([75,0,13]){
            rotate(a = [90,0,0]) {
                cylinder(h=300, r=1.5, $fn=100, center=true);
            }
        }	
        
        translate([5,0,-13]){
            rotate(a = [90,0,0]) {
                cylinder(h=300, r=1.5, $fn=100, center=true);
            }
        }	
        translate([75,0,-13]){
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


        translate([80-6.5,24,0]){
            rotate(a = [0,0,90]) {
                cylinder(h=300, r=1.5, $fn=100, center=true);
            }
        }	
        translate([80-6.5,19,0]){
            rotate(a = [0,0,90]) {
                cylinder(h=300, r=1.5, $fn=100, center=true);
            }
        }	


	}
}
