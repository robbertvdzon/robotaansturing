
difference(){
	union(){        
        translate([0,-20,0]){
           cube([80,50,3], center=false);
        }
        translate([25,-20,-28]){
           cube([20,50,3], center=false);
        }
        translate([0,-20,-28]){
           cube([100,3,31], center=false);
        }
        translate([80,-20,-28]){
           cube([20,16,31], center=false);
        }
        
        
       
        
	}
	union() {
        translate([95,-13,-16]){
            rotate(a = [0,90,0]) {
                cylinder(h=300, r=2.5, $fn=100, center=true);
            }
        }
        translate([95,0,-16]){
            rotate(a = [90,0,0]) {
                cylinder(h=300, r=1, $fn=100, center=true);
            }
        }	
        translate([85,0,-16]){
            rotate(a = [90,0,0]) {
                cylinder(h=300, r=1, $fn=100, center=true);
            }
        }	


        translate([5,0,-4]){
            rotate(a = [90,0,0]) {
                cylinder(h=300, r=1.5, $fn=100, center=true);
            }
        }	
        translate([90,0,0-4]){
            rotate(a = [90,0,0]) {
                cylinder(h=300, r=1.5, $fn=100, center=true);
            }
        }	
        
        translate([5,0,-24]){
            rotate(a = [90,0,0]) {
                cylinder(h=300, r=1.5, $fn=100, center=true);
            }
        }	
        translate([90,0,-24]){
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





	}
}
