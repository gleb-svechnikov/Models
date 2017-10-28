
difference(){
  union(){
 //import("../lib/hook.stl") ;
 translate([10,0,-3])   color("red") cylinder(24,4,4, true);
 translate([7,0,-10]) sphere(3);
    translate([1,0,9])   rotate([90,0,0]) cylinder(8,13,13, true);
 
  }
translate([17,0,-13])  cube([10,10,10], true);
  translate([9.5,0,-10])  cube([2,10,10], true);
 translate([1,0,9]){rotate([90,0,0]) cylinder(9,10,10, true);}
}

