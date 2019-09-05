breedte = 60;
dikte = 4;

difference(){
	union(){        
        translate([0,0,0]){
           cube([15,105,dikte], center=false);
        }
        translate([0,0,dikte+breedte]){
           cube([15,105,dikte], center=false);
        }
        translate([-15,0,0]){
           cube([45,dikte,2*dikte+breedte], center=false);
        }
	}
	union() {
/* gaten in onderplaat */
        translate([-10,10,10]){
            rotate(a = [90,0,0]) {
                cylinder(h=30, r=1, $fn=100, center=true);
            }
        }	

        translate([-10,10,breedte+2*dikte-10]){
            rotate(a = [90,0,0]) {
                cylinder(h=30, r=1, $fn=100, center=true);
            }
        }	

        translate([25,10,dikte+10]){
            rotate(a = [90,0,0]) {
                cylinder(h=30, r=1, $fn=100, center=true);
            }
        }	

        translate([25,10,breedte+2*dikte-10]){
            rotate(a = [90,0,0]) {
                cylinder(h=30, r=1, $fn=100, center=true);
            }
        }	



/* gaten in as */
        for (a =[15:10:90]){
            translate([7.5,a,-10]){
                rotate(a = [0,0,0]) {
                    cylinder(h=400, r=1.5, $fn=100, center=false);
                }
            }	
        }
        



/* gat voor lager */
        translate([7.5,98,-10]){
            rotate(a = [0,0,0]) {
                cylinder(h=400, r=3.8, $fn=100, center=false);
            }
        }	


	}
}
