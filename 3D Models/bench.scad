module side(){
difference(){
translate([20,20,100]) cube([2,150,40]);
translate([19,20,101]) rotate([60,00,0]) cube([4,150,40]);
translate([19,130,0]) rotate([60,00,0]) cube([4,150,40]);

}}

rotate([120,00,0]) side();
translate([-120,0,0]) rotate([120,00,0]) side();
translate([0,-420,0]) rotate([120,0,180]) side();