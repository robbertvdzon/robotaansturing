difference(){
	union(){
       translate([0,0,0]){
            rotate(a = [0,0,0]) {
                cylinder(h=85, r=20, $fn=300, center=true);
            }
       }
       translate([0,0,(89)/2]){
            rotate(a = [0,0,0]) {
                cylinder(h=4, r=40, $fn=100, center=true);
            }
       }
       translate([0,0,-(89)/2]){
            rotate(a = [0,0,0]) {
                cylinder(h=4, r=40, $fn=100, center=true);
            }
       }
       
       

	}
	union() {

        translate([34,0,0]){
           cube([85,100,125], center=true);
        }	   
   


        
	}
}