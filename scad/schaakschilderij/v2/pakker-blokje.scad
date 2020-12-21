
difference(){
	union(){ 

        translate([0,0,0]){
            rotate([0,0,45]){
                cube([10,10,5], center=false);
            }
        }  

            
	}
	union() {
        translate([-21,7,-1]){
           cube([45,20,12], center=false);
        }                
        translate([-10,0,1]){
           cube([20,1.5,10], center=false);
        }                

	}
}
