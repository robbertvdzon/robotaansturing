
difference(){
	union(){        

        translate([0,0,0]){
           cube([4,7,57], center=false);
        }
        
        
       
        
	}
	union() {

  

        translate([0,3.5,3.5]){
            rotate(a = [0,90,0]) {
                cylinder(h=300, r=1.5, $fn=100, center=true);
            }
        }	
        
        translate([0,3.5,3.5+50]){
            rotate(a = [0,90,0]) {
                cylinder(h=300, r=1.5, $fn=100, center=true);
            }
        }	




	}
}
