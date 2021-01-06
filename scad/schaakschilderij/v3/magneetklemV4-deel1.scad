
difference(){
	union(){


        translate([23,-22,0]){
           cube([27,56,25], center=false);
        }        

        translate([3,-18,0]){
           cube([75-6,47,25], center=false);
        }        
        translate([0,(21-10)/2,0]){
           cube([75,10,25], center=false);
        }        

        translate([75/2,21/2,0]){
            rotate([0,0,0]){
                cylinder(h=25, r=18.5, $fn=100, center=false);
            }
        }
        
        translate([(75-33)/2,-6,0]){
           cube([33,10,25], center=false);
        }        
        translate([(75-7)/2,-18,0]){
           cube([7,3,45], center=false);
        }        
        translate([(75-7)/2,-4+30,0]){
           cube([7,3,45], center=false);
        }        


        translate([3,-18,0]){
           cube([7,3,45], center=false);
        }        
        translate([3,-4+30,0]){
           cube([7,3,45], center=false);
        }        

        translate([65,-18,0]){
           cube([7,3,45], center=false);
        }        
        translate([65,-4+30,0]){
           cube([7,3,45], center=false);
        }        



        translate([-9.5+75/2,34,17.5]){
            rotate([90,0,0]){
                cylinder(h=7, r=11, $fn=100, center=false);
            }
        }
        translate([9.5+75/2,34,17.5]){
            rotate([90,0,0]){
                cylinder(h=7, r=11, $fn=100, center=false);
            }
        }        
        translate([-9.5+75/2,-15,17.5]){
            rotate([90,0,0]){
                cylinder(h=7, r=11, $fn=100, center=false);
            }
        }
        translate([9.5+75/2,-15,17.5]){
            rotate([90,0,0]){
                cylinder(h=7, r=11, $fn=100, center=false);
            }
        }        
        translate([1.5-2,-10,17.5-11]){
            rotate([0,90,0]){
                cylinder(h=7, r=11, $fn=100, center=false);
            }
        }        
        translate([68.5,-10,17.5-11]){
            rotate([0,90,0]){
                cylinder(h=7, r=11, $fn=100, center=false);
            }
        }        

        
        
	}
	union() {
        translate([-10,-50,-5]){
           cube([200,200,5], center=false);
        }        

        translate([3,-10,7]){
            rotate([0,-90,90]){
                cylinder(h=200, r=1.2, $fn=100, center=false);
            }
        }        
        translate([75-3,-7,7]){
            rotate([0,-90,90]){
                cylinder(h=20, r=1.2, $fn=100, center=false);
            }
        }        


        translate([9.5+75/2,-18.5,17]){
            rotate([0,0,90]){
                cylinder(h=200, r=1.2, $fn=100, center=false);
            }
        }        
        translate([-9.5+75/2,-18.5,17]){
            rotate([0,0,90]){
                cylinder(h=200, r=1.2, $fn=100, center=false);
            }
        }        
        translate([9.5+75/2,30.5,17]){
            rotate([0,0,90]){
                cylinder(h=200, r=1.2, $fn=100, center=false);
            }
        }        
        translate([-9.5+75/2,30.5,17]){
            rotate([0,0,90]){
                cylinder(h=200, r=1.2, $fn=100, center=false);
            }
        }        


        translate([6.5,-15,-5]){
           cube([75-13,41,35], center=false);
        }        
        translate([75/2-3,20/2+2,-1]){
        //   cube([6,30,15], center=false);
        }        



        translate([-10,21/2,5]){
            rotate([0,90,0]){
                cylinder(h=200, r=1.5, $fn=100, center=false);
            }
        }
        translate([-10,21/2,20]){
            rotate([0,90,0]){
                cylinder(h=200, r=1.5, $fn=100, center=false);
            }
        }

        translate([-9.5+75/2,50,17.5]){
            rotate([90,0,0]){
                cylinder(h=200, r=5, $fn=100, center=false);
            }
        }
        translate([9.5+75/2,50,17.5]){
            rotate([90,0,0]){
                cylinder(h=200, r=5, $fn=100, center=false);
            }
        }        
        translate([-10,-10,17.5-11]){
            rotate([0,90,0]){
                cylinder(h=200, r=5, $fn=100, center=false);
            }
        }        
        
        
        translate([-9.5+75/2,32+3,17.5]){
            rotate([90,0,0]){
                cylinder(h=6, r=8.3, $fn=100, center=false);
            }
        }
        translate([9.5+75/2,32+3,17.5]){
            rotate([90,0,0]){
                cylinder(h=6, r=8.3, $fn=100, center=false);
            }
        }        
        translate([-9.5+75/2,-15-2,17.5]){
            rotate([90,0,0]){
                cylinder(h=6, r=8.3, $fn=100, center=false);
            }
        }
        translate([9.5+75/2,-15-2,17.5]){
            rotate([90,0,0]){
                cylinder(h=6, r=8.3, $fn=100, center=false);
            }
        }        
        translate([1.5-3,-10,17.5-11]){
            rotate([0,90,0]){
                cylinder(h=6, r=8.3, $fn=100, center=false);
            }
        }        
        translate([68.5+2,-10,17.5-11]){
            rotate([0,90,0]){
                cylinder(h=6, r=8.3, $fn=100, center=false);
            }
        }         
        
        
        translate([75/2,33,14]){
            rotate([90,0,0]){
                //cylinder(h=30, r=3, $fn=100, center=false);
            }
        }        
        translate([75/2,30,40]){
            rotate([90,0,0]){
                cylinder(h=100, r=1.5, $fn=100, center=false);
            }
        }        
        
        translate([68.5,30,40]){
            rotate([90,0,0]){
                cylinder(h=100, r=1.5, $fn=100, center=false);
            }
        }        
        translate([6.5,30,40]){
            rotate([90,0,0]){
                cylinder(h=100, r=1.5, $fn=100, center=false);
            }
        }        
        


	}
}
