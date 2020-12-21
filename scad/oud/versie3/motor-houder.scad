difference(){
	union(){
       translate([0,0,0]){
            rotate(a = [0,0,0]) {
                cylinder(h=9, r=15, $fn=100, center=false);
            }
       }

	}
	union() {

       translate([0,0,4.5]){
            rotate(a = [0,0,90]) {
                cylinder(h=600, r=12.7, $fn=100, center=true);
            }
       }   
       translate([0,0,4.5]){
            rotate(a = [90,0,0]) {
                cylinder(h=600, r=1.0, $fn=100, center=true);
            }
       }   
       translate([0,0,4.5]){
            rotate(a = [0,90,0]) {
                cylinder(h=600, r=1.0, $fn=100, center=true);
            }
       }   


        
	}
}