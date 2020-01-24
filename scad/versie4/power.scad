
	union(){
        difference(){
            union(){
                translate([0,0,0]){
                   cube([120,30,3], center=false);
               }
               translate([50+10,3,0]){
                    linear_extrude(4) text("arduino", font="arial",size = 3);            
                }
               translate([50+15+18,3,0]){
                    linear_extrude(4) text("pi", font="arial",size = 3);            
                }
               translate([50+15+30,3,0]){
                    linear_extrude(4) text("motoren", font="arial",size = 3);            
                }        

            }
            union() {   
            
            
               translate([15,5,-1]){
                   cube([30,20,10], center=false);
               }

               translate([3,3,-1]){
                    rotate(a = [0,0,90]) {
                        cylinder(h=600, r=1.5, $fn=100, center=false);
                    }
               }
               translate([3,30-3,-1]){
                    rotate(a = [0,0,90]) {
                        cylinder(h=600, r=1.5, $fn=100, center=false);
                    }
               }
               translate([120-3,3,-1]){
                    rotate(a = [0,0,90]) {
                        cylinder(h=600, r=1.5, $fn=100, center=false);
                    }
               }
               translate([120-3,30-3,-1]){
                    rotate(a = [0,0,90]) {
                        cylinder(h=600, r=1.5, $fn=100, center=false);
                    }
               }               

               translate([50+17.5,15,-1]){
                    rotate(a = [0,0,90]) {
                        cylinder(h=600, r=1.5, $fn=100, center=false);
                    }
               }
               translate([50+17.5*2,15,-1]){
                    rotate(a = [0,0,90]) {
                        cylinder(h=600, r=1.5, $fn=100, center=false);
                    }
               }
               translate([50+17.5*3,15,-1]){
                    rotate(a = [0,0,90]) {
                        cylinder(h=600, r=1.5, $fn=100, center=false);
                    }
               }
                
            }
        }
        
       translate([15,22,0]){
          rotate(a = [0,0,45]) {
                   cube([5,5,3], center=false);
          }
       }
       
       translate([15,1,0]){
          rotate(a = [0,0,45]) {
                   cube([5,5,3], center=false);
          }
       }
       translate([15+30,22,0]){
          rotate(a = [0,0,45]) {
                   cube([5,5,3], center=false);
          }
       }
       
       translate([15+30,1,0]){
          rotate(a = [0,0,45]) {
                   cube([5,5,3], center=false);
          }
       }       
       
}