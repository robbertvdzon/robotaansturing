
linkerMarge = 14+extraMarge;
rechterMarge = 14+extraMarge;
gatDiameter = 5;
ruimteTussenGaten = 1;

totaleBreedte = linkerMarge 
                + aantalGaten*gatDiameter
                + (aantalGaten-1)*ruimteTussenGaten
                + rechterMarge;
echo (totaleBreedte);
posEersteGat = linkerMarge + gatDiameter/2;
echo (totaleBreedte);

difference(){
	union(){        
        translate([0,0,0]){
           cube([15,10,totaleBreedte], center=false);
        }
        translate([0,0,0]){
           cube([15,20,4], center=false);
        }
        translate([0,0,totaleBreedte-4]){
           cube([15,20,4], center=false);
        }
	

        
	}
	union() {
        
        for (nr = [0:1:aantalGaten-1]){
            xPos = posEersteGat + nr*(gatDiameter+ruimteTussenGaten);
            echo (xPos);

            // schroefdraad
            translate([-20,5,xPos]){
                rotate(a = [0,90,0]) {
                    cylinder(h=400, r=1.3, $fn=30, center=false);
                }
            }	
            // gat
            translate([7.5,20,xPos]){
                rotate(a = [90,0,0]) {
                    cylinder(h=400, r=2.5, $fn=30, center=false);
                }
            }	
        }
        
        // montage gaten        
        translate([7.5,5,-10]){
            rotate(a = [0,0,0]) {
                cylinder(h=400, r=1.3, $fn=30, center=false);
            }

        }	
        translate([7.5,15,-10]){
            rotate(a = [0,0,0]) {
                cylinder(h=400, r=1.3, $fn=30, center=false);
            }

        }	



	}
}

