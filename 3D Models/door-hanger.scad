cube([20,45,4], true);
cylinder(15,5,5);
translate([0,21,10.5]) cube([20,4,25], true);
translate([0,-21,15.5]) cube([20,4,35], true);
rotate([40,0,0])  translate([0,-16.8,30]) cube([20,4,34], true);

translate([0,-32.5,30])  rotate([0,90,0]) 
difference(){
cylinder(20,13,13, true);
cylinder(21,9,9, true);
}