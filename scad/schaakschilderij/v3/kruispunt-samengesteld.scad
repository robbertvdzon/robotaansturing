translate([36.5,-14.5,17.5]){
 rotate([-90,0,90]){
    import("kruispunt.stl", convexity=3);
 }
}
translate([74,0,-0.5]){
// import("kruispunt-eindstop.stl", convexity=3);
}
translate([0,0,0]){
 rotate([0,0,0]){
  import("magneetklemV4-deel2.stl", convexity=3);
 }
 
}
