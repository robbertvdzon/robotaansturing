difference(){
	union(){
        translate([0,0,0]){
          cube([50,15,4], center=false);
        }			   
        translate([0,0,0]){
          cube([50,5,24], center=false);
        }			   
	}
    {
        union() {           
            translate([25,10,20]){
                rotate(a = [90,0,0]) {
                    cylinder(h=40, r=14.5, $fn=80, center=false);     
                }
            }			   
            translate([42,10,20]){
                rotate(a = [90,0,0]) {
                    cylinder(h=40, r=1.8, $fn=40, center=false);     
                }
            }			   
            translate([8,10,20]){
                rotate(a = [90,0,0]) {
                    cylinder(h=40, r=1.8, $fn=40, center=false);     
                }
            }			   
            
            translate([5,10,-1]){
                cylinder(h=40, r=2, $fn=40, center=false);     
            }			   
            translate([45,10,-1]){
                cylinder(h=40, r=2, $fn=40, center=false);     
            }			   
            
        }
    }
}
