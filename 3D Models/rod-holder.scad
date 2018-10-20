difference(){
translate([0,10,0]) cube([60,10,13], true);
translate([20,11,0]) rotate([90,0,0]) cylinder(20,0, 5, center=true);
    translate([-20,11,0]) rotate([90,0,0]) cylinder(20,0, 5, center=true);
}

translate([0,-20,0]) difference(){
 
 
 cube([20,50,13], true);
  translate([0,-16,0])  cylinder(d=13, h=40, center=true);
}
