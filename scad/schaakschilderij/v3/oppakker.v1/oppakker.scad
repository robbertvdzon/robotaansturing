
difference(){
	union(){



        // rand
        translate([3,-23,0]){
           cube([3,97-45,25], center=false);
        }
        translate([69,-23,0]){
           cube([3,97-45,25], center=false);
        }
        translate([3,-23,0]){
             cube([69,3,25], center=false);
        }
        translate([3,29,0]){
             cube([69,3,25], center=false);
        }

        
        
        // verdikking voor schuifcontacten
        translate([18,24,0]){
           cube([39,14,45], center=false);
        }
        translate([18,24-52+6.5,0]){
            rotate([0,0,90]){
                cylinder(h=45, r=4.2, $fn=100, center=false);
            }
        }        
        translate([18+39,24-52+6.5,0]){
            rotate([0,0,90]){
                cylinder(h=45, r=4.2, $fn=100, center=false);
            }
        }        

        translate([18,24-52,0]){
           cube([39,14,45], center=false);
        }
        translate([18,31.5,0]){
            rotate([0,0,90]){
                cylinder(h=45, r=4.2, $fn=100, center=false);
            }
        }        
        translate([18+39,31.5,0]){
            rotate([0,0,90]){
                cylinder(h=45, r=4.2, $fn=100, center=false);
            }
        }        


        // uitsparing voor schroefgaten pull magneten
        translate([0,5.5,0]){
           cube([5,10,25], center=false);
        }        
        translate([70,5.5,0]){
           cube([5,10,25], center=false);
        }        


        // verdikking voor schuifcontacten horizontaal
        translate([-2,-20,0]){
           cube([14,20,36], center=false);
        }
        translate([-2+67,-20,0]){
           cube([14,20,36], center=false);
        }
        translate([4,24-52+6.5+2,0]){
            rotate([0,0,90]){
                cylinder(h=36, r=4.2, $fn=100, center=false);
            }
        }        
        translate([4,24-52+6.5+2+20,0]){
            rotate([0,0,90]){
                cylinder(h=36, r=4.2, $fn=100, center=false);
            }
        }        
        translate([4+67,24-52+6.5+2,0]){
            rotate([0,0,90]){
                cylinder(h=36, r=4.2, $fn=100, center=false);
            }
        }        
        translate([4+67,24-52+6.5+2+20,0]){
            rotate([0,0,90]){
                cylinder(h=36, r=4.2, $fn=100, center=false);
            }
        }        

        
	}
	union() {

        // schroefgaten deksel verticale assen
        translate([18,24-52+6.5,-1]){
            rotate([0,0,90]){
                cylinder(h=48, r=1.2, $fn=100, center=false);
            }
        }        
        translate([18+39,24-52+6.5,-1]){
            rotate([0,0,90]){
                cylinder(h=48, r=1.2, $fn=100, center=false);
            }
        }        
        translate([18,31.5,-1]){
            rotate([0,0,90]){
                cylinder(h=48, r=1.2, $fn=100, center=false);
            }
        }        
        translate([18+39,31.5,-1]){
            rotate([0,0,90]){
                cylinder(h=48, r=1.2, $fn=100, center=false);
            }
        }      
      
      // schroefgaten horizontale assen
        translate([4,24-52+6.5+2,-1]){
            rotate([0,0,90]){
                cylinder(h=38, r=1.2, $fn=100, center=false);
            }
        }        
        translate([4,24-52+6.5+2+20,-1]){
            rotate([0,0,90]){
                cylinder(h=38, r=1.2, $fn=100, center=false);
            }
        }        

        translate([4+67,24-52+6.5+2,-1]){
            rotate([0,0,90]){
                cylinder(h=38, r=1.2, $fn=100, center=false);
            }
        }        
        translate([4+67,24-52+6.5+2+20,-1]){
            rotate([0,0,90]){
                cylinder(h=38, r=1.2, $fn=100, center=false);
            }
        }        
        
        

        // schuifcontact gaten
        translate([-9.5+75/2,31,17.5]){
            rotate([0,0,90]){
                include <grafiethouder-reverse.scad>;                
            }
        }  
        translate([+9.5+75/2,31,17.5]){
            rotate([0,0,90]){
                include <grafiethouder-reverse.scad>;                
            }
        }  
        translate([+9.5+75/2,-21,17.5]){
            rotate([0,0,90]){
                include <grafiethouder-reverse.scad>;                
            }
        }  
        translate([-9.5+75/2,-21,17.5]){
            rotate([0,0,90]){
                include <grafiethouder-reverse.scad>;                
            }
        }  

        // schuifcontact gaten horizontale as
        translate([4,-10,6.5]){
            rotate([0,0,0]){
                include <grafiethouder-reverse.scad>;                
            }
        }  
        translate([72,-10,6.5]){
            rotate([0,0,0]){
                include <grafiethouder-reverse.scad>;                
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
        
        // extra grote gaten voor schuifassen
        translate([-2+3,-10,6.5]){
            rotate([0,90,0]){
                cylinder(h=81-6, r=6, $fn=100, center=false);
            }
        }        
        translate([-9.5+75/2,38-3,17.5]){
            rotate([90,0,0]){
                cylinder(h=60, r=6, $fn=100, center=false);
            }
        }
        translate([9.5+75/2,38-3,17.5]){
            rotate([90,0,0]){
                cylinder(h=60, r=6, $fn=100, center=false);
            }
        }        
        
        //lager kruizen
        translate([-9.5+75/2,20,17.5]){
            rotate([90,0,0]){
                for (hoek =[0:45:360])
                rotate([0,0,hoek]){
                    translate([-1,-6,-30]){
                        rotate([0,0,0]){
                            cube([2,6,90], center=false);
                        }
                    }
                }
            }
        }
        translate([+9.5+75/2,20,17.5]){
            rotate([90,0,0]){
                for (hoek =[0:45:360])
                rotate([0,0,hoek]){
                    translate([-1,-6,-30]){
                        rotate([0,0,0]){
                            cube([2,6,90], center=false);
                        }
                    }
                }
            }
        }
        
        translate([10,-10,6.5]){
            rotate([0,90,0]){
                for (hoek =[0:45:360])
                rotate([0,0,hoek]){
                    translate([-1,-6,-30]){
                        rotate([0,0,0]){
                            cube([2,6,150], center=false);
                        }
                    }
                }
            }
        }
        
        

        // boor gaten in staaf        
        translate([75/2,30,40]){
            rotate([90,0,0]){
                cylinder(h=100, r=1.5, $fn=100, center=false);
            }
        }               


        // gaten voor middelste magneet
        translate([75/2,10.5,-1]){
            rotate([0,0,90]){
                cylinder(h=20, r=32/2, $fn=100, center=false);
            }
        }
               
        


	}
}
