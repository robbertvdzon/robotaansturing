
difference(){
	union(){         
        translate([0,0,0]){
           cube([80,3,5], center=false);
        }
        translate([0,0,0]){
           cube([20,10,3], center=false);
        }
        translate([60,0,0]){
           cube([20,10,3], center=false);
        }

        translate([0,0,5]){
           cube([80,10,3], center=false);
        }


        translate([0,0,5]){
           cube([20,12,3], center=false);
        }
        translate([60,0,5]){
           cube([20,12,3], center=false);
        }


        translate([65,0,0]){
           cube([10,15,3], center=false);
        }
        translate([65,0,5]){
           cube([10,15,3], center=false);
        }
        translate([5,0,0]){
           cube([10,15,3], center=false);
        }
        translate([5,0,5]){
           cube([10,15,3], center=false);
        }

        
        for (x = [0:9]){
            translate([1+x*2,0,3]){
               cube([0.5,10,0.8], center=false);
            }
        }
        for (x = [0:9]){
            translate([61+x*2,0,3]){
               cube([0.5,10,0.8], center=false);
            }
        }
       
        
	}
	union() {
        translate([10,11.5,-1]){
            rotate(a = [0,0,0]) {
                cylinder(h=5.5, r=1.6, $fn=100, center=false);
            }
        }	
        translate([10,11.5,4]){
            rotate(a = [0,0,0]) {
                cylinder(h=5.5, r=1.3, $fn=100, center=false);
            }
        }	
        
        translate([70,11.5,-1]){
            rotate(a = [0,0,0]) {
                cylinder(h=5.5, r=1.6, $fn=100, center=false);
            }
        }	
        translate([70,11.5,4]){
            rotate(a = [0,0,0]) {
                cylinder(h=5.5, r=1.3, $fn=100, center=false);
            }
        }	
        
	}
}
