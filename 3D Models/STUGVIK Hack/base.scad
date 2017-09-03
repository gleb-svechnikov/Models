$fn = 50;
translate([0,18,0]) difference()
{
union() {
    difference(){
        translate([0,0,-10]) cylinder(14,27,21);
        translate([0,0,-10.1]) cylinder(3,25,23);
      translate([0,0,-10.1]) cylinder(13,22,15);
      translate([0,0,-10.1]) cylinder(13,20,10);
           

    }
}
 translate([0,0,-30]) cylinder(55,3,3);
}
