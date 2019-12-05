difference(){
	union(){
        
         translate([25,0,724]){
            rotate(a = [90,0,0]) {
                cylinder(h=3, r=726, $fn=300, center=true);
            }
        }


	}
	union() {
         translate([-10,0,11.5]){
            rotate(a = [90,0,0]) {
                cylinder(h=600, r=2, $fn=100, center=true);
            }
       }			   
       translate([91-20-10,0,11.5]){
            rotate(a = [90,0,0]) {
                cylinder(h=600, r=2, $fn=100, center=true);
            }
       }			   

        // uitsparing ronding
         translate([25,0,724]){
            rotate(a = [90,0,0]) {
                cylinder(h=40, r=700, $fn=300, center=true);
            }
        }
        translate([-20-1000,-5,-50]){
           cube([1000,30,1000], center=false);
        }
        translate([71,-5,-5]){
           cube([1000,30,1000], center=false);
        }
        translate([-1000,-5,300]){
           cube([2000,30,2000], center=false);
        }


        
	}
}
