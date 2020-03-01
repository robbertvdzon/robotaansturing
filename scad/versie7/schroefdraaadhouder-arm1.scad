breedte = 73;
difference(){
	union(){
       translate([breedte/2+10,30-6,7.5]){
            rotate(a = [0,90,0]) {
              cylinder(h=breedte/2-15, r=2, $fn=100, center=false);
            }
       }	
       translate([breedte/2+10,30+6,7.5]){
            rotate(a = [0,90,0]) {
              cylinder(h=breedte/2-15, r=2, $fn=100, center=false);
            }
       }	
       translate([5,30-6,7.5]){
            rotate(a = [0,90,0]) {
              cylinder(h=breedte/2-15, r=2, $fn=100, center=false);
            }
       }	
       translate([5,30+6,7.5]){
            rotate(a = [0,90,0]) {
              cylinder(h=breedte/2-15, r=2, $fn=100, center=false);
            }
       }	

difference(){
	union(){
        
       translate([0,0,0]){
           cube([breedte,60,15], center=false);
       }



	}
	union() {


       translate([-1,47,-1]){
       //    cube([breedte+2,20,17], center=false);
       }        

       translate([breedte/2-20,60/2,-1]){
            rotate(a = [0,0,90]) {
              cylinder(h=600, r=5, $fn=100, center=false);
            }
       }	
       translate([breedte/2+20,60/2,-1]){
            rotate(a = [0,0,90]) {
              cylinder(h=600, r=5, $fn=100, center=false);
            }
       }	
       translate([breedte/2-20-20,60/2-5,-5]){
           cube([20,10,25], center=false);
       }
       translate([breedte/2+20,60/2-5,-5]){
           cube([20,10,25], center=false);
       }
       
       
        translate([breedte/2,60/2,-4.5]){
            rotate(a = [0,0,90]) {
                cylinder(h=600, r=6, $fn=100, center=false);
            }
       }   

        translate([breedte/2,60/2,10]){
            rotate(a = [0,0,90]) {
                cylinder(h=600, r=15, $fn=100, center=false);
            }
       }   
 

       translate([breedte/2+8,60/2,0]){
            rotate(a = [0,0,90]) {
                cylinder(h=600, r=1.5, $fn=100, center=false);
            }
       }  
       translate([breedte/2-8,60/2,0]){
            rotate(a = [0,0,90]) {
                cylinder(h=600, r=1.5, $fn=100, center=false);
            }
       }    
       
       translate([breedte/2-55/2,60,7.5]){
            rotate(a = [90,0,0]) {
              //  cylinder(h=600, r=1.2, $fn=100, center=false);
            }
       }   
       translate([breedte/2+55/2,60,7.5]){
            rotate(a = [90,0,0]) {
              //  cylinder(h=600, r=1.2, $fn=100, center=false);
            }
       }   

        
	}
}
       
        
    }
    union(){
    }
}
