
difference(){
	union(){        

        translate([0,0,0]){
           cube([20,70,5], center=false);
        }
        translate([0,0,25]){
           cube([20,70,5], center=false);
        }



        translate([0,20,0]){
           cube([5,30,25], center=false);
        }
        translate([15,0,0]){
           cube([5,30,25], center=false);
        }

        translate([20,0,5]){
           cube([7,5,20], center=false);
        }


        

        
	}
	union() {


        translate([10,10,-5]){
            rotate(a = [0,0,-10]) {
                cylinder(h=500, r=3.7, $fn=100, center=false);
            }
        }	
        
        



        translate([10,65,-5]){
            rotate(a = [0,0,-10]) {
                cylinder(h=500, r=1.5, $fn=100, center=false);
            }
        }	
        translate([10,45,-5]){
            rotate(a = [0,0,-10]) {
                cylinder(h=500, r=1.5, $fn=100, center=false);
            }
        }	

        
       
        translate([-20,2.5,15]){
            rotate(a = [0,90,0]) {
                cylinder(h=500, r=1, $fn=100, center=false);
            }
        }	
        translate([22.5,20,15]){
            rotate(a = [90,0,0]) {
                cylinder(h=500, r=1, $fn=100, center=false);
            }
        }	 
        

	}
}
