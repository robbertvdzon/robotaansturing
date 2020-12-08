
difference(){
    lengte=50;
    diameter=12;
    diepte=5;
    breedte=22;
    hoogte=21;
	union(){ 

        translate([0,0,0]){
           cube([lengte,breedte,hoogte], center=false);
        }        
	}
	union() {
        steps = lengte-diameter;
        for (a =[0:7:steps]){
            fact = 1-(a/steps);
            translate([diameter+a,breedte/2,hoogte+diameter-diepte*fact]){
                sphere(diameter, $fn=100);
            }
        }
	}
}
