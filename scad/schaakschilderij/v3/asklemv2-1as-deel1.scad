
difference(){
	union(){

        translate([-9.5,-7.5,-9]){
            cube([19,15,18], center=false);
        }

        
        

	}
	union() {

        for (hoek =[0:45:360])
        rotate([0,0,hoek]){

            translate([-1,-5,-10]){
                rotate([0,0,0]){
                    color("red")
                    cube([2,5,20], center=false);
                }
            }
        }

        translate([0,0,-7]){
            rotate([0,0,90]){
                color("green")
                cylinder(h=14, r=5, $fn=100, center=false);
            }
        }
        translate([0,0,-15]){
            rotate([0,0,90]){
                color("green")
                cylinder(h=30, r=4, $fn=100, center=false);
            }
        }
        translate([0,0,0]){
            rotate([0,90,0]){
                color("red")
                cylinder(h=200, r=4, $fn=100, center=false);
            }
        }

        translate([7,20,5]){
            rotate([90,0,0]){
                color("blue")
                cylinder(h=100, r=1.5, $fn=100, center=false);
            }
        }
        translate([7,20,-5]){
            rotate([90,0,0]){
                color("blue")
                cylinder(h=100, r=1.5, $fn=100, center=false);
            }
        }
        translate([-7,20,5]){
            rotate([90,0,0]){
                color("blue")
                cylinder(h=100, r=1.5, $fn=100, center=false);
            }
        }
        translate([-7,20,-5]){
            rotate([90,0,0]){
                color("blue")
                cylinder(h=100, r=1.5, $fn=100, center=false);
            }
        }

	}
}
