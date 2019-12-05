difference(){
	union(){
        
        translate([8,10,0]){
           cylinder(h=11, r=5, $fn=100, center=false);
        }
	}
	union() {
        translate([8,10,-5]){
            rotate(a = [0,0,0]) {
                cylinder(h=100, r=1, $fn=100, center=false);
            }
        }	
        

        
	}
}