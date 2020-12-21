
difference(){
	union(){        

        translate([31,-20,-28]){
           cube([20,60,3], center=false);
        }
        translate([31,-20,-6]){
           cube([20,60,3], center=false);
        }
        translate([0,-20,-28]){
           cube([105,3,25], center=false);
        }
        translate([80,-20,-28]){
           cube([10,25,25], center=false);
        }

        
       
        
	}
	union() {
        translate([41,30,-28]){
            rotate(a = [0,0,90]) {
                cylinder(h=300, r=3.8, $fn=100, center=true);
            }
        }



        translate([95,-3,-19]){
            rotate(a = [0,90,0]) {
                cylinder(h=300, r=2.5, $fn=100, center=true);
            }
        }
        translate([95,-3,-19+7]){
            rotate(a = [0,90,0]) {
                cylinder(h=300, r=2.5, $fn=100, center=true);
            }
        }




        translate([85,0,-19]){
            rotate(a = [90,0,0]) {
                cylinder(h=300, r=1, $fn=100, center=true);
            }
        }	


        translate([85,0,-19+7]){
            rotate(a = [90,0,0]) {
                cylinder(h=300, r=1, $fn=100, center=true);
            }
        }	



        translate([5,0,-6]){
            rotate(a = [90,0,0]) {
                cylinder(h=300, r=1.5, $fn=100, center=true);
            }
        }	
        translate([100,0,-6]){
            rotate(a = [90,0,0]) {
                cylinder(h=300, r=1.5, $fn=100, center=true);
            }
        }	
        
        translate([5,0,-24]){
            rotate(a = [90,0,0]) {
                cylinder(h=300, r=1.5, $fn=100, center=true);
            }
        }	
        translate([100,0,-24]){
            rotate(a = [90,0,0]) {
                cylinder(h=300, r=1.5, $fn=100, center=true);
            }
        }	
        
        









	}
}
