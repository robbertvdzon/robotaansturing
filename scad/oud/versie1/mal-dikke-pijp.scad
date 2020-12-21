difference(){
	union(){
        
       translate([0,0,0]){
            rotate(a = [0,0,0]) {
                cylinder(h=60, r=17, $fn=100, center=false);
            }
       }
       
			   
			
	}
	union() {
        
       translate([0,0,-5]){
            rotate(a = [0,0,0]) {
                cylinder(h=95, r=13.8, $fn=100, center=false);
            }
       }
        
       translate([-100,0,5]){
            rotate(a = [0,90,0]) {
                cylinder(h=600, r=1.2, $fn=100, center=false);
            }
       }			   
		   
       translate([0,0,5]){
            rotate(a = [0,90,0]) {
                cylinder(h=600, r=1.2, $fn=100, center=false);
            }
       }

       translate([0,30,5]){
            rotate(a = [90,0,0]) {
                cylinder(h=600, r=1.5, $fn=100, center=false);
            }
       }			   
       translate([0,30,50]){
            rotate(a = [90,0,0]) {
                cylinder(h=600, r=1.5, $fn=100, center=false);
            }
       }			   
       translate([0,30,40]){
            rotate(a = [90,0,0]) {
                cylinder(h=600, r=1.5, $fn=100, center=false);
            }
       }			   

        
	}
}