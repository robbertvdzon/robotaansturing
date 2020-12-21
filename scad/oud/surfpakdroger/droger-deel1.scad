
difference(){
	union(){ 

        translate([0,0,0]){
           cube([15,15,17+5], center=false);
        }
        

	}
	union() {
        translate([0,-1,17+5]){
           rotate([0,23,0]){
            cube([30,30,30], center=false);
           }
        }
        translate([-1,(15-1.2)/2,5]){
            cube([30,1.2,60], center=false);
        }

	}
}
