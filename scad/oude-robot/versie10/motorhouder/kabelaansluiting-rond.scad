
difference(){
	union(){ 
        
        translate([0,0,15]){
            rotate(a = [0,90,0]) {
                cylinder(h=80, r=5, $fn=100, center=false);
            }
        }	
        translate([0,-5,10]){
           cube([80,10,5], center=false);
        }
        translate([0,-3,10]){
           cube([10,6,12], center=false);
        }
        translate([13,-3,10]){
           cube([3,6,10], center=false);
        }
        translate([70,-3,10]){
           cube([3,6,10], center=false);
        }
        translate([76,-3,10]){
           cube([3,6,10], center=false);
        }
    
	}
	union() {


        translate([10,0,15]){
            rotate(a = [0,90,0]) {
                cylinder(h=320, r=3.5, $fn=100, center=false);
            }
        }	
        translate([-10,0,15]){
            rotate(a = [0,90,0]) {
                cylinder(h=320, r=1.5, $fn=100, center=false);
            }
        }	
        
        
        translate([5,00,16]){
            rotate(a = [0,0,90]) {
                cylinder(h=300, r=1.3, $fn=100, center=false);
            }
        }	
        translate([5,10,5]){
            rotate(a = [90,0,0]) {
                cylinder(h=300, r=1.4, $fn=100, center=false);
            }
        }


	}
}

