module hex(){
$fn = 6;
//difference()
//{
  //  cube([10, 10,5], true);
    translate([0,0,0]) cylinder(6, 3.4,3.4);
//}
}
$fn = 60;

difference(){
cylinder(5, 6,6, true);
translate([0,0,-1]) hex(); 
}
translate([0,0,3]) difference(){
    
    cylinder(1.9, 3.6,3.6, true);
    cylinder(2, 2.6,2.6, true);
    }