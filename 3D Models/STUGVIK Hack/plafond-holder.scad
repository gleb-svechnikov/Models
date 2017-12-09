
difference(){
  cylinder(25,25,30);
cylinder(26,21,21);
}
rotate([0,0,8]) {
translate([0,37.3,2.5]) cube([6.3,30.8,5], true);
 translate([0,49,1]) rotate([-6,0,0]) cylinder(20,3.2,2.6);
}
rotate([0,0,-8]) {
translate([0,37.3,2.5]) cube([6.3,30.8,5], true);
 translate([0,49,1]) rotate([-6,0,0]) cylinder(20,3.2,2.6);
}