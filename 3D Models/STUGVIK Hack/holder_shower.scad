module nut()
{
    $fn = 6;
cylinder(6.5,6,6);
};
module shower_holder(){
  difference(){
cylinder(35,15,12, true);

    translate([0,10,0]) rotate([8,0,0]) cube([16,10,50], true);
  }
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
            translate([0,0,3]) nut();
              translate([0,0,-4])    cylinder(22,3.2,3.2);

        }
         translate([3,0,30]) rotate([105,0,90])  shower_holder();
    }
    //translate([0,25,0]) cube([50,50,200], true);
   
  translate([0,0,31]) rotate([105,0,90])  cylinder(42,12,9, true);
}


