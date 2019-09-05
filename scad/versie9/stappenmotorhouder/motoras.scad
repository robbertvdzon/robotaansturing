difference(){
	union(){
     cylinder(h=40, r=2.5, $fn=40, center=false);     
	}    
    {
        union() {
         translate([1.5,-10,-50]){
            cube([3,20,100], center=false);
         }
         translate([-4.5,-10,-50]){
            cube([3,20,100], center=false);
         }
        }
    }
}
