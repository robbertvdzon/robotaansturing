difference(){
	union(){
        translate([0,-5,0]){
           cube([5,10,125], center=false);
       }
       translate([5+32,-5,0]){
           cube([5,10,125], center=false);
       }


       translate([5,-5,35]){
           cube([32,10,10], center=false);
       }
       translate([32/2,-5,35]){
           cube([10,15,10], center=false);
       }
       translate([5,-5,121]){
           cube([32,10,4], center=false);
       }


	}
	union() {       
       translate([-30,0,5]){
            rotate(a = [0,90,0]) {
                cylinder(h=600, r=1, $fn=100, center=false);
            }
       }			   
       translate([-30,0,40]){
            rotate(a = [0,90,0]) {
                cylinder(h=600, r=1, $fn=100, center=false);
            }
       }			   
			   
 		  			   

       translate([5+32/2,20,40]){
            rotate(a = [90,0,0]) {
                cylinder(h=600, r=1, $fn=100, center=false);
            }
       }

 			
			   
   


        
	}
}