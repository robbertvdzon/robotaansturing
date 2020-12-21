difference(){
	union(){
        translate([0,-5,0]){
           cube([5,10,180], center=false);
       }
       translate([0+5+42,-5,0]){
           cube([5,10,180], center=false);
       }


       translate([42,-5,150]){
           cube([5,10,60], center=false);
       }
       translate([5,-5,150]){
           cube([5,10,60], center=false);
       }
       translate([5,-5,200]){
           cube([42,10,10], center=false);
       }
       translate([42/2,-5,200]){
           cube([10,15,10], center=false);
       }
       translate([-15,-5,00]){
           cube([82,25,6], center=false);
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