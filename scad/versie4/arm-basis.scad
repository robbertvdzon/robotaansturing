difference(){
	union(){
        translate([0,-5,0]){
           cube([5,10,210], center=false);
       }
       translate([0+5+62,-5,0]){
           cube([5,10,210], center=false);
       }

       translate([0,-5,150]){
           cube([72,10,5], center=false);
       }


       translate([0,-5,00]){
           cube([72,25,6], center=false);
       }

	}
	union() {       
			   
       translate([-30,0,85]){
            rotate(a = [0,90,0]) {
                cylinder(h=600, r=1, $fn=100, center=false);
            }
       }			   
		   
       translate([-30,0,205]){
            rotate(a = [0,90,0]) {
                cylinder(h=600, r=1, $fn=100, center=false);
            }
       }			   


			
       translate([5+42/2,10,205]){
            rotate(a = [90,0,0]) {
                cylinder(h=600, r=1, $fn=100, center=false);
            }
       }			   
   


        
	}
}