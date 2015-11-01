module hex(){
$fn = 6;

    translate([0,0,0]) cylinder(6, 5.7,5.7);

}
$fn = 60;

difference(){
cylinder(4, 10,10, true);
rotate([0,0,90])  translate([-1.2,0,-3]) hex(); 
  translate([-10,-10.1,-3])  cube([20,6,10]);
}
difference(){
translate([-4,6,-2])  cube([8,50,4]);
rotate([-10,0,0]) translate([-5,40,10])  cube([10,50,4]);
rotate([10,0,0]) translate([-5,40,-14])  cube([10,50,4]);
}
    