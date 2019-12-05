lengte = 150;
dikte = 4;

difference(){
	union(){        
        translate([0,0,0]){
           cube([15,lengte,dikte], center=false);
        }
	}
	union() {

/* gaten in as */
        for (a =[20:10:lengte-15]){
            translate([7.5,a,-10]){
                rotate(a = [0,0,0]) {
                    cylinder(h=400, r=1.5, $fn=100, center=false);
                }
            }	
        }
        



/* gat voor lager */
        translate([7.5,lengte-7,-10]){
            rotate(a = [0,0,0]) {
                cylinder(h=400, r=3.8, $fn=100, center=false);
            }
        }	
        translate([7.5,7,-10]){
            rotate(a = [0,0,0]) {
                cylinder(h=400, r=3.8, $fn=100, center=false);
            }
        }	

	}
}
