$fn=50;
translate([0,18,0]) difference()
{

union() {
    difference(){
        translate([0,0,-10]) cylinder(11,27,21);
        translate([0,0,-10.1]) cylinder(2.7,25,23);
      translate([0,0,-10.1]) cylinder(8,22,15);
      translate([0,0,-10.1]) cylinder(8,20,10);
           

    }
}
   color("red") translate([0,-25,-4.5]) rotate([0,-90,90]) cylinder(11,4.5,4.5, true);
 translate([0,0,-30]) cylinder(55,3.3,3.3);
  
}

  difference(){

  translate([0,-7,-4.5]) rotate([0,-90,90]) cylinder(8,5.5,5.5, true);

 //translate([0,-10,-5]) rotate([0,-80,90]) cylinder(8,4.5,4.5, true);
   color("red") translate([0,-14,-4.5]) rotate([0,-90,90]) cylinder(25,4,4, true);
// cylinder(13,1.5,1.5, true);
   translate([0,-6,0])  sphere(3);
  translate([0,18,-10.1]) cylinder(2.7,25,23);
}
      
//translate([0,-19,6]) rotate([0,-90,90])  
//for(i = [0 : 180]){
//  translate([10*cos(i),0,10*sin(i)])  sphere(3.5, true);
//};
