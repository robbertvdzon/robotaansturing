
difference(){
	union(){ 
        
        translate([0,-25,0]){
           cube([35,50,5], center=false);
        }
        translate([0,-10,0]){
           cube([35,20,5], center=false);
        }
        translate([0,-10,0]){
           cube([5,20,37], center=false);
        }
        translate([30,-10,0]){
           cube([5,20,37], center=false);
        }

        translate([0,5,0]){
           cube([35,5,22], center=false);
        }
        translate([0,-10,0]){
           cube([35,5,22], center=false);
        }
        translate([0,-25,0]){
           cube([5,50,22], center=false);
        }
        translate([15,-25,0]){
           cube([5,15,22], center=false);
        }
        translate([15,10,0]){
           cube([5,15,22], center=false);
        }

       
        
	}
	union() {
        translate([-10,20,16]){
            rotate(a = [0,90,0]) {
                cylinder(h=320, r=3, $fn=100, center=false);
            }
        }	
        translate([-10,-20,16]){
            rotate(a = [0,90,0]) {
                cylinder(h=320, r=3, $fn=100, center=false);
            }
        }	

        translate([-20,0,11]){
            scale([1,1,0.6]) {
                rotate(a = [0,90,0]) {
                    cylinder(h=320, r=5, $fn=100, center=false);
                }
            }
        }	
        translate([-20,0,21]){
            scale([1,1,0.6]) {
                rotate(a = [0,90,0]) {
                    cylinder(h=320, r=5, $fn=100, center=false);
                }
            }
        }	
        translate([-1,0,30]){
            rotate(a = [0,90,0]) {
                cylinder(h=320, r=2.6, $fn=100, center=false);
            }
        }	
        
        translate([28,16,-1]){
            rotate(a = [0,0,0]) {
                cylinder(h=320, r=2, $fn=100, center=false);
            }
        }	
        translate([28,-16,-1]){
            rotate(a = [0,0,0]) {
                cylinder(h=320, r=2, $fn=100, center=false);
            }
        }	
        translate([2.5,0,30]){
            rotate(a = [0,0,0]) {
                cylinder(h=320, r=1.1, $fn=100, center=false);
            }
        }	
        translate([32.5,0,30]){
            rotate(a = [0,0,0]) {
                cylinder(h=320, r=1.1, $fn=100, center=false);
            }
        }	

	}
}
