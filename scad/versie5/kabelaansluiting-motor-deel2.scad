
difference(){
	union(){        

        translate([0,0,1]){
                cylinder(h=3, r=15, $fn=100, center=false);
        }
        translate([0,0,0]){
                cylinder(h=1, r=17, $fn=100, center=false);
        }
        
      
        
        
	}
	union() {



        translate([0,0,-10]){
            rotate(a = [0,0,-10]) {
                cylinder(h=500, r=1.5, $fn=100, center=false);
            }
        }	
        
        translate([10,0,-10]){
            rotate(a = [0,0,-10]) {
                cylinder(h=500, r=0.5, $fn=100, center=false);
            }
        }	
        translate([-10,0,-10]){
            rotate(a = [0,0,-10]) {
                cylinder(h=500, r=0.5, $fn=100, center=false);
            }
        }	

        translate([10,0,3]){
            rotate(a = [0,0,-10]) {
                cylinder(h=500, r=1.5, $fn=100, center=false);
            }
        }	
        translate([-10,0,3]){
            rotate(a = [0,0,-10]) {
                cylinder(h=500, r=1.5, $fn=100, center=false);
            }
        }	

        translate([0,-7.5,-10]){
            rotate(a = [0,0,-10]) {
                cylinder(h=500, r=1.5, $fn=100, center=false);
            }
        }	
        translate([0,7.5,-10]){
            rotate(a = [0,0,-10]) {
                cylinder(h=500, r=1.5, $fn=100, center=false);
            }
        }	



        translate([-50,0,4]){
            rotate(a = [0,90,0]) {
                cylinder(h=500, r=0.5, $fn=100, center=false);
            }
        }	


	}
}
