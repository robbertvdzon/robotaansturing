translate([0,0,0]){
 import("kruispunt.stl", convexity=3);
}
translate([70,0,-0.5]){
 import("kruispunt-eindstop.stl", convexity=3);
}
translate([9,2.5+2,-16.5+14.5/2]){
 rotate([0,0,0]){
  import("magneetklemV3-deel2.stl", convexity=3);
 }
}
//14.5/2