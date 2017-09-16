$fn=50;
 difference()
{
union() {
    difference(){
        translate([0,0,-10]) cylinder(11,25,21);
        translate([0,0,-10.1]) cylinder(3.7,23,23);
      translate([0,0,-10.1]) cylinder(10,22,15);
           

    }
}
 translate([0,0,-30]) cylinder(55,3,3);
union(){
 color("red") translate([0,-20,-4]) rotate([0,-70,90]) cylinder(12,2,0, true);
 color("red") translate([0,-23,-3]) rotate([0,-80,90]) cylinder(5,3,3, true);
}
}

  