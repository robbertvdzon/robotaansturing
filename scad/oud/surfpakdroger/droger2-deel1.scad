
difference(){
	union(){ 

        translate([0,3,0]){
           cube([10,124,3], center=false);
        }
        translate([0,0,0]){
           cube([10,3,60], center=false);
        }
        translate([0,127,0]){
           cube([10,3,60], center=false);
        }
        

	}
	union() {
        translate([5,200,55]){
            rotate([90,0,0]){
                cylinder(h=220, r=1, $fn=100, center=false);
            }
        }        
	}
}
