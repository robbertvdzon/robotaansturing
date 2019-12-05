
difference(){
	union(){ 
        
        translate([0,0,15]){
            rotate(a = [0,90,0]) {
                cylinder(h=80, r=6.5, $fn=100, center=false);
            }
        }	
        translate([0,-5,0]){
           cube([10,10,15], center=false);
        }
     
        
       
        
	}
	union() {


        translate([10,0,15]){
            rotate(a = [0,90,0]) {
                cylinder(h=320, r=3.5, $fn=100, center=false);
            }
        }	
        translate([-10,0,15]){
            rotate(a = [0,90,0]) {
                cylinder(h=320, r=1.5, $fn=100, center=false);
            }
        }	
        
        
        translate([5,00,-30]){
            rotate(a = [0,0,90]) {
                cylinder(h=45, r=2.4, $fn=100, center=false);
            }
        }	

        translate([5,00,-30]){
            rotate(a = [0,0,90]) {
                cylinder(h=300, r=1.3, $fn=100, center=false);
            }
        }	



	}
}
