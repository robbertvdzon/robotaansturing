
difference(){
	union(){        

        translate([31,-9,-28]){
           cube([20,100,3], center=false);
        }

        translate([41,-8,-28]){
            rotate(a = [0,0,90]) {
                cylinder(h=6, r=10, $fn=100, center=false);
            }
        }
        
       
        
	}
	union() {
        translate([41,20,-29]){
            rotate(a = [0,0,90]) {
                cylinder(h=300, r=3.8, $fn=100, center=true);
            }
        }

        translate([41,-10,-25]){
            rotate(a = [0,90,30]) {
                cylinder(h=300, r=1.1, $fn=100, center=true);
            }
        }
        translate([41,-10,-25]){
            rotate(a = [0,90,-20]) {
                cylinder(h=300, r=1.1, $fn=100, center=true);
            }
        }










	}
}
