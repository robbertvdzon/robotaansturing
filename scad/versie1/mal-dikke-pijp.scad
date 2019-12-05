difference(){
	union(){
        
       translate([0,0,0]){
            rotate(a = [0,0,0]) {
                cylinder(h=10, r=15, $fn=100, center=false);
            }
       }
       
			   
			
	}
	union() {
        
       translate([0,0,-5]){
            rotate(a = [0,0,0]) {
                cylinder(h=95, r=11.2, $fn=100, center=false);
            }
       }
        
       translate([-100,0,5]){
            rotate(a = [0,90,0]) {
                cylinder(h=600, r=1, $fn=100, center=false);
            }
       }			   
			   

       translate([0,30,5]){
            rotate(a = [90,0,0]) {
                cylinder(h=600, r=1, $fn=100, center=false);
            }
       }			   

       translate([0,0,5]){
            rotate(a = [0,90,0]) {
                cylinder(h=600, r=2.5, $fn=100, center=false);
            }
       }

        
	}
}