 import("base.stl") ;
  
  translate([0,-19.2,6]) rotate([180,98,90])  

 import("../lib/hook.stl") 

 translate([0,-13,-4]) rotate([0,-80,90]) cylinder(14.8,4,4, true);
translate([0,18,0])   for(i=[0:45:360]){
rotate([0,0,i])  translate([0,10,-4])  cube([0.5,10,13], true);

}
translate([0,18,0 ])   for(i=[0:15:360]){
rotate([0,0,i])  translate([0,22,-9])  cube([0.5,3,3], true);

}