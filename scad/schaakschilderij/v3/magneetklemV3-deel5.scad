
difference(){
	union(){
        translate([ -11.5,3.5,0]){
           cube([15,6,15.5], center=false);
        }        
        translate([ -3.5,4,15.5/2-3]){
           cube([100,5,6], center=false);
        }        
	}
	union() {


        translate([0,7.75-1.5,-1]){
            rotate([0,0,0]){
                cylinder(h=28, r=1.5, $fn=100, center=false);
            } 
        }
        translate([-7,7.75-1.5,-1]){
            rotate([0,0,0]){
                cylinder(h=28, r=1.5, $fn=100, center=false);
            } 
        }

        for (a =[0:10]){
            translate([92-7*a,20,15.5/2]){
                rotate([90,0,0]){
                    cylinder(h=28, r=1.5, $fn=100, center=false);
                } 
            }
        }

	}
}
//