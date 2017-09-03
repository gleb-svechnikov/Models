module nut()
{
    $fn = 6;
cylinder(6.5,6,6);
};

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
            translate([0,0,4]) nut();
              translate([0,0,-4])    cylinder(22,3.2,3.2);

        }
    }
    //translate([0,25,0]) cube([50,50,200], true);
    
}