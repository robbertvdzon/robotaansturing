
difference(){
	union(){



        // groot blok
        translate([3,-68,0]){
           cube([75-6,97,25], center=false);
        }

        // middelste blok
        translate([3,-38,0]){
           cube([75-6,37,40-1], center=false);
        }


        // uitsparing voor schroefgaten pull magneten
        translate([0,5.5,0]){
           cube([75,10,25], center=false);
        }        
        translate([0,-54.5,0]){
           cube([75,10,25], center=false);
        }        

        
        // 6 staven
        translate([(75-7)/2,-68,0]){
           cube([7,3,45], center=false);
        }        
        translate([(75-7)/2,-4,0]){
           cube([7,3,45], center=false);
        }        
        translate([(75-7)/2,-38,0]){
           cube([7,3,45], center=false);
        }        
        translate([(75-7)/2,-4+30,0]){
           cube([7,3,45], center=false);
        }        

        
	}
	union() {

        // gaten voor draad
        translate([75/2,-68+97/2,-1]){
            rotate([0,0,90]){
                cylinder(h=200, r=3, $fn=100, center=false);
            }
        }

        // schroefgaten voor deksel
        translate([75/2+18,-68+97/2+10,-1]){
            rotate([0,0,90]){
                cylinder(h=200, r=1.2, $fn=100, center=false);
            }
        }
        translate([75/2-18,-68+97/2-10,-1]){
            rotate([0,0,90]){
                cylinder(h=200, r=1.2, $fn=100, center=false);
            }
        }


        // schuifcontact gaten
        translate([20,-10,6.5]){
            rotate([0,0,0]){
                include <grafiethouder-reverse.scad>;                
            }
        }  
        translate([55,-29,6.5]){
            rotate([0,0,0]){
                include <grafiethouder-reverse.scad>;                
            }
        }  
        translate([-9.5+75/2,-29,17.5]){
            rotate([0,0,0]){
                include <grafiethouder-reverse.scad>;                
            }
        }  
        translate([+9.5+75/2,-10,17.5]){
            rotate([0,0,0]){
                include <grafiethouder-reverse.scad>;                
            }
        }  


        // middelste ruimte  
        translate([6.5,-63,-5]){
           cube([75-13,25,35], center=false);
        }        
        translate([6.5,-38+37,-5]){
           cube([75-13,25,35], center=false);
        }        


        // gaten voor middelste magneet
        translate([75/2,10.5,-1]){
            rotate([0,0,90]){
                cylinder(h=20, r=30/2, $fn=100, center=false);
            }
        }
        translate([75/2,-49.5,-1]){
            rotate([0,0,90]){
                cylinder(h=20, r=30/2, $fn=100, center=false);
            }
        }


        // schroefgaten voor pull magneten
        translate([-10,10.5,5]){
            rotate([0,90,0]){
                cylinder(h=200, r=1.5, $fn=100, center=false);
            }
        }
        translate([-10,10.5,20]){
            rotate([0,90,0]){
                cylinder(h=200, r=1.5, $fn=100, center=false);
            }
        }

        // schroefgaten voor pull magneten 2
        translate([-10,-49.5,5]){
            rotate([0,90,0]){
                cylinder(h=200, r=1.5, $fn=100, center=false);
            }
        }
        translate([-10,-49.5,20]){
            rotate([0,90,0]){
                cylinder(h=200, r=1.5, $fn=100, center=false);
            }
        }

        // as gaten voor schuif assen        
        translate([-9.5+75/2,50,17.5]){
            rotate([90,0,0]){
                cylinder(h=200, r=4.2, $fn=100, center=false);
            }
        }
        translate([9.5+75/2,50,17.5]){
            rotate([90,0,0]){
                cylinder(h=200, r=4.2, $fn=100, center=false);
            }
        }        
        translate([-10,-10,6.5]){
            rotate([0,90,0]){
                cylinder(h=200, r=4.2, $fn=100, center=false);
            }
        }        
        translate([-10,-29,6.5]){
            rotate([0,90,0]){
                cylinder(h=200, r=4.2, $fn=100, center=false);
            }
        }        

        // as gaten voor schuif assen : middelste grote gaten        
        translate([-9.5+75/2,20,17.5]){
            rotate([90,0,0]){
                cylinder(h=70, r=7, $fn=100, center=false);
            }
        }
        translate([9.5+75/2,20,17.5]){
            rotate([90,0,0]){
                cylinder(h=70, r=7, $fn=100, center=false);
            }
        }       
        translate([7,-10,6.5]){
            rotate([0,90,0]){
                cylinder(h=61, r=7, $fn=100, center=false);
            }
        }        
        translate([7,-29,6.5]){
            rotate([0,90,0]){
                cylinder(h=61, r=7, $fn=100, center=false);
            }
        }                    
        
        
        // boor gaten in 3 staven        
        translate([75/2,30,40]){
            rotate([90,0,0]){
                cylinder(h=100, r=1.5, $fn=100, center=false);
            }
        }               
        translate([68.5,30,40]){
            rotate([90,0,0]){
          //      cylinder(h=100, r=1.5, $fn=100, center=false);
            }
        }        
        translate([6.5,30,40]){
            rotate([90,0,0]){
        //        cylinder(h=100, r=1.5, $fn=100, center=false);
            }
        } 
               
        


	}
}
