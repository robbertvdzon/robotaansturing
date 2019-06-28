difference(){
	union(){
/*        
        translate([-8,-3,0]){
           cube([57,3,15], center=false);
        }
        translate([0,0,0]){
           cube([41,35,3], center=false);
        }
        translate([0,0,0]){
          cube([3,35,15], center=false);
        }      
*/
        translate([-3,25,0]){
          cube([3,85,15], center=false);
        }      
        translate([0+5,25+50,0]){
          cube([3,85-7.5-50-5,15], center=false);
        }      
        translate([0,25+50,0]){
          cube([5,85-7.5-18-50,15], center=false);
        }      
/*

        translate([38,0,0]){
          cube([3,35,15], center=false);
        }      
        
        translate([38-16,30,0]){
          cube([8,5,15], center=false);
        }      
        translate([22,0,0]){
          cube([8,7,15], center=false);
        }      

        translate([2,30,0]){
          cube([8,5,8], center=false);
        }      
        translate([2,2,0]){
          cube([8,5,10], center=false);
        }      
        */

	}
	union() {
       translate([0,103,7.5]){
            rotate(a = [0,90,0]) {
                cylinder(h=600, r=3.5, $fn=100, center=true);
            }
       }	
        translate([4,25+50+10,5]){
          cube([7,85-7.5-18-40,5], center=false);
        }      
     

/*
       translate([0,24,3+6]){
            rotate(a = [0,90,0]) {
                cylinder(h=600, r=1, $fn=100, center=true);
            }
       }			   
       translate([26,3.5,0]){
            rotate(a = [0,0,90]) {
                cylinder(h=600, r=1, $fn=100, center=true);
            }
       }			   
       translate([26,35-2.5,0]){
            rotate(a = [0,0,90]) {
                cylinder(h=600, r=1, $fn=100, center=true);
            }
       }	
         translate([-4,0,7.5]){
            rotate(a = [90,0,0]) {
                cylinder(h=600, r=1, $fn=100, center=true);
            }
       }			   
       translate([57-4-8,0,7.5]){
            rotate(a = [90,0,0]) {
                cylinder(h=600, r=1, $fn=100, center=true);
            }
       }			   
       translate([30,21,-4]){
          cube([8,15,8], center=false);
        }      
*/
        
	}
}