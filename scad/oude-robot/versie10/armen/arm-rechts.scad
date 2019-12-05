
difference(){
	union(){        
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
        translate([7.5,30,-10]){
            rotate(a = [0,0,0]) {
                cylinder(h=400, r=1.5, $fn=100, center=false);
            }
        }	
        translate([7.5,lengte-35,-10]){
            rotate(a = [0,0,0]) {
                cylinder(h=400, r=1.5, $fn=100, center=false);
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


        translate([0,-13.5,0]){
           cube([24,12,dikte], center=false);
        }
        translate([0,-13.5,0]){
           cube([15,15,dikte], center=false);
        }
        
        translate([24,-7.5,0]){
            rotate(a = [0,0,0]) {
                cylinder(h=dikte, r=6, $fn=100, center=false);
            }
        }	



        
	}
	union() {

/* gat voor lager */
        translate([24,-7.5,-10]){
            rotate(a = [0,0,0]) {
                cylinder(h=400, r=1.5, $fn=100, center=false);
            }
        }	

        translate([0,-40,-10]){
           rotate(a = [0,0,45]) {
            cube([30,30,20], center=false);
           }
        }

	}
}
