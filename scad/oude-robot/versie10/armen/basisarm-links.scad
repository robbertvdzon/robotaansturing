      
dikte = 3;

difference(){
	union(){   
       
        translate([10,35,0]){
           rotate(a = [0,0,-135]) {
             cube([5,116,dikte], center=false);
           }
        }

        translate([0,-55,0]){
           cube([15,90,dikte], center=false);
        }
     
        translate([0,-11,0]){
           cube([49,7,dikte], center=false);
        }
        translate([0,-55,0]){
           cube([92,10,dikte], center=false);
        }
        translate([0,-55,0]){
           cube([10,3,13], center=false);
        }
        translate([70,-55,0]){
           cube([10,3,13], center=false);
        }


        
	}
	union() {

/* gaten in as */
        translate([7.5,30,-10]){
            rotate(a = [0,0,0]) {
                cylinder(h=400, r=1.5, $fn=100, center=false);
            }
        }	
        translate([87.5,-50,-10]){
            rotate(a = [0,0,0]) {
                cylinder(h=400, r=1.5, $fn=100, center=false);
            }
        }	
        translate([24,-7.5,-10]){
            rotate(a = [0,0,0]) {
                cylinder(h=400, r=1.5, $fn=100, center=false);
            }
        }	
        translate([5,30,8]){
            rotate(a = [90,0,0]) {
                cylinder(h=400, r=1.5, $fn=100, center=false);
            }
        }	
        translate([75,30,8]){
            rotate(a = [90,0,0]) {
                cylinder(h=400, r=1.5, $fn=100, center=false);
            }
        }	
        
	}
}

