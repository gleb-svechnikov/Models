module nut(){
  $fn=6;
 cylinder(4,4.3,4.3,true);
  }

  $fn=100;  
difference(){
union(){
difference()
{
  cylinder(4,6.5,6.5,true);
  
 // translate([0,0,-3]) cylinder(5,7,7,true);
 translate([0,0,-2])  nut();
}

translate([0,0,2]) cylinder(4,3.5,3.5,true);
}

translate([0,0,16])  cylinder(55,2.4,2.4,true);

}