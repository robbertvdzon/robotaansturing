difference(){

	union(){
        // testplaat
        translate([3,10,0]){
           //cube([29,41,5], center=false);
        }


        // onderplaat
        translate([0,0,0]){
           cube([51,60,3], center=false);
        }
        
        // linkerkant
        translate([0,0,0]){
          cube([3,60,23], center=false);
        }      
        // rechterkant
        translate([51-3,0,0]){
         cube([3,20,23], center=false);
        }      
        
        // steun rechtsvoor
        translate([28,51,0]){
          cube([4,9,23], center=false);
        }      
        // steun rechtsachter
        translate([28,10,0]){
          cube([4,9,23], center=false);
        }      
        // steun linksvoor (later verhogen)
        translate([13,41+10,0]){
          cube([6,6,5], center=false);
        }      
        // steun linksachter (later verhogen)
        translate([13,10,0]){
          cube([6,6,5], center=false);
        }      
        
        translate([0,51-9,13]){
            rotate(a = [0,90,0]) {
                cylinder(h=1, r=2.25, $fn=100, center=true);
            }
        }			   
        
	}
	union() {
        // gat in zijkanten (9.1mm)
       translate([0,51-9,13]){
            rotate(a = [0,90,0]) {
                cylinder(h=600, r=1, $fn=100, center=true);
            }
       }			   

        // gat in ring
        translate([0,51-9,13]){
            rotate(a = [0,90,0]) {
                cylinder(h=2, r=1.75, $fn=100, center=true);
            }
        }			   
       
       
/*
       // gat in steun rechtsachter
       translate([26,3.5,0]){
            rotate(a = [0,0,90]) {
                cylinder(h=600, r=1, $fn=100, center=true);
            }
       }			   
       // gat in steun rechtsvoor
       translate([26,35-2.5,0]){
            rotate(a = [0,0,90]) {
                cylinder(h=600, r=1, $fn=100, center=true);
            }
       }	
*/       
       // uitsparing vloer
        translate([42,20,-10]){
          cube([20,50,20], center=false);
        }      

        
	}
}