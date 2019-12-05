difference(){
	union(){
	  for (hoek = [0:19])
		rotate(a = [0,0,hoek*9]) {
			translate([0,0,0]){
			 scale([1,0.4,1]){
				rotate(a = [0,0,45]) {
				  cube([7,7,10], center=true);
				}			   
			 }
			}
		}
     translate([0,0,-5]){
        cylinder(h=2, r=8, $fn=40, center=false);
     }
     translate([20,0,-5]){
        cylinder(h=2, r=8, $fn=40, center=false);
     }
	}
    {
        union() {
            translate([0,0,-20]){
                include <motoras.scad>;
            }
            
            
        }
    }
}
// 5mm tandwiel + 2.75mm 