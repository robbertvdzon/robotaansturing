difference(){

	union(){
        // onderplaat
        translate([0,-3,0]){
           cube([51,63,3], center=false);
        }
        
	}
	union() {
       // gat in steun rechtsachter
       translate([16,3,0]){
            rotate(a = [0,0,90]) {
                cylinder(h=600, r=1, $fn=100, center=true);
            }
       }			   
       // gat in steun rechtsvoor
       translate([16,54,0]){
            rotate(a = [0,0,90]) {
                cylinder(h=600, r=1, $fn=100, center=true);
            }
       }	
       // uitsparing vloer
        translate([42,20,-10]){
          cube([20,50,20], center=false);
        }      

        
	}
}