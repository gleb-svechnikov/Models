

translate([0,0,-4.1])  difference()
{
sphere(25);
translate([0,0,-6])  
  cube([50,50,50], true);
}
difference()
{
  union(){
    translate([0,0,6]) cylinder(2,30,30, true);
    translate([0,0,-8]) cylinder(2,30,30, true);
    translate([0,0,-20])cylinder(2,30,30, true);
    
    translate([0,0,-3])  cylinder(36,16,16, true);
  }
// for(d = [0 : 90 : 360]){
//   rotate([0,0,d])   translate([-d/40,182,-125])  cylinder(15,d/70,d/70);
//   rotate([0,0,d])   translate([d/40,182,-125])  cylinder(15,d/70,d/70);
//  
// }
 translate([0,282,-125])  cylinder(15,3,3,true);
translate([0,0,-15])  cylinder(121,15,15, true);
}
 for(a = [0 : 45 : 360]){
   rotate([0,0,a]) color("blue") translate([0,20,-8]) cube([0.5,15,23], true);
   }
//   
//   
//    for(b = [0 : 45 : 360]){
//   rotate([0,0,b]) color("blue") translate([0,150,30])cube([10,10,295], true);
//   }
//   
//   for(c = [-45 : 90 : 360]){
//   rotate([0,0,c]) color("blue") translate([0,165,-127])cube(16, true);
//   }
//   
//
//translate([0,0,170]) difference(){
// cylinder(20,25,25, true);
//   cylinder(22,20,20, true);
//}