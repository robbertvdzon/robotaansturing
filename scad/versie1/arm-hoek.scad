difference(){
	union(){
        
       translate([0,0,0]){
            rotate(a = [0,0,0]) {
                cylinder(h=20, r=9.5, $fn=100, center=false);
            }
       }		   
       translate([13+26,0,0]){
            rotate(a = [0,0,0]) {
                cylinder(h=20, r=9.5, $fn=100, center=false);
            }
       }		   
       translate([19.5,0,0]){
            rotate(a = [0,0,0]) {
                cylinder(h=60, r=12.8, $fn=100, center=false);
            }
       }		   

	}
	union() {
       translate([0,0,-10]){
            rotate(a = [0,0,0]) {
                cylinder(h=600, r=6.7, $fn=100, center=false);
            }
       }			   
       translate([13+26,0,-10]){
            rotate(a = [0,0,0]) {
                cylinder(h=600, r=6.7, $fn=100, center=false);
            }
       }			   
       translate([19.5,0,-10]){
            rotate(a = [0,0,0]) {
                cylinder(h=600, r=9.0, $fn=100, center=false);
            }
       }			   

       translate([-10,0,10]){
            rotate(a = [0,90,0]) {
                cylinder(h=400, r=1, $fn=100, center=false);
            }
       }			


       translate([-10,0,53]){
            rotate(a = [0,90,0]) {
                cylinder(h=40, r=1, $fn=100, center=false);
            }
       }			


       translate([20,0,53]){
            rotate(a = [0,90,0]) {
                cylinder(h=20, r=4, $fn=100, center=false);
            }
       }			
       translate([20,-4,53]){
           cube([18,8,18], center=false);
       } 

       translate([19.5,20,53]){
            rotate(a = [90,0,0]) {
                cylinder(h=40, r=1, $fn=100, center=false);
            }
       }	
        
	}
}