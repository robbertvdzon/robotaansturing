
difference(){
	union(){ 

        translate([0,0,0]){
           cube([40,40,25], center=false);
        }                
            
	}
	union() {

        translate([0,12.5,12.5]){
            rotate([0,90,0]){
                cylinder(h=200, r=7.5, $fn=100, center=true);
            }   
        }
        translate([12.5,12.5+15,12.5]){
            rotate([0,0,90]){
                cylinder(h=200, r=7.5, $fn=100, center=true);
            }   
        }
        translate([12.5+15,12.5+15,12.5]){
            rotate([0,0,90]){
                cylinder(h=200, r=7.5, $fn=100, center=true);
            }   
        }
               

	}
}
