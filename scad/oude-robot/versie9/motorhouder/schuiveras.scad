
difference(){
	union(){        

        translate([0,0,0]){
           cube([16,20,25], center=false);
        }
        
        
       
        
	}
	union() {

        translate([5,-1,10]){
           cube([6,30,30], center=false);
        }


        translate([0,10,20]){
            rotate(a = [0,90,0]) {
                cylinder(h=300, r=1.5, $fn=100, center=true);
            }
        }	
        
        
        translate([8,10,0]){
            rotate(a = [0,0,90]) {
                cylinder(h=30, r=2.4, $fn=100, center=true);
            }
        }	




	}
}
