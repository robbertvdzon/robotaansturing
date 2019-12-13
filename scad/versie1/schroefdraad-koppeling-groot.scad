difference(){
	union(){
        
       translate([0,0,0]){
            rotate(a = [0,0,0]) {
                cylinder(h=20, r=10, $fn=100, center=true);
            }
       }		   


	}
	union() {
       translate([0,0,10]){
            rotate(a = [0,0,0]) {
               cylinder(h=20, r=3.8, $fn=100, center=true);
            }
       }			   
       translate([0,0,-10]){
            rotate(a = [0,0,0]) {
               cylinder(h=50, r=1.8, $fn=100, center=true);
            }
       }			   

        translate([0,0,5]){
            rotate(a = [0,90,0]) {
                cylinder(h=600, r=1.0, $fn=100, center=true);
            }
       }      
        translate([0,0,-5]){
            rotate(a = [0,90,0]) {
                cylinder(h=600, r=1.0, $fn=100, center=true);
            }
       }      

        
	}
}