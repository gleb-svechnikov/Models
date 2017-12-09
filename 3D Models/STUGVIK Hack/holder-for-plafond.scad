module nut()
{
    $fn = 6;
cylinder(7.3,6,6);
};
   $fn = 60;
difference()
{
    union()
    {
        difference(){
              union(){
                cylinder(10,21,15);
                translate([0,0,14.5]) cube([19,12,15], true);
                 translate([9,0,5]) cylinder(17,6,6);
                 translate([-9,0,5]) cylinder(17,6,6);
                }
            translate([0,0,3]) nut();
              translate([0,0,-4])    cylinder(24,3.5,3.5);

        }
    }
    translate([0,25,0]) cube([50,5,200], true);
       translate([8,0,13]) rotate([90,0,0]) cylinder(15,3,3, true);
   translate([-8,0,13]) rotate([90,0,0]) cylinder(15,3,3, true);
}
