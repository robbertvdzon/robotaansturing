
difference(){
	union(){ 
        
        translate([0,-5,0]){
           cube([35,10,5], center=false);
        }
        translate([0,-5,0]){
           cube([5,10,35], center=false);
        }
        translate([30,-5,0]){
           cube([5,10,35], center=false);
        }
     
       
        
	}
	union() {

        translate([-1,0,25]){
            rotate(a = [0,90,0]) {
                cylinder(h=320, r=2.5, $fn=100, center=false);
            }
        }	
        
        translate([17.5,0,-1]){
            rotate(a = [0,0,0]) {
                cylinder(h=320, r=1.5, $fn=100, center=false);
            }
        }	
        translate([2.5,0,-1]){
            rotate(a = [0,0,0]) {
                cylinder(h=320, r=1.1, $fn=100, center=false);
            }
        }	
        translate([32.5,0,-1]){
            rotate(a = [0,0,0]) {
                cylinder(h=320, r=1.1, $fn=100, center=false);
            }
        }	

	}
}
