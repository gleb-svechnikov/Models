
translate([-4.9,-5,-20])  

difference(){
  
  cylinder(100,19,19);
  cylinder(100,16,16);

  translate([-3,0,55])  cube([35,45,65], true);

}
translate([-5,-5,73])  cube([1,33,10], true);
translate([-5,-5,-6])  cube([1,33,15], true);
difference(){

  translate([-5,-5,-20])   cylinder(2,19,19);
   translate([-5,-5,-200]) cylinder(200,2,2);
}
difference(){
  translate([18,0,31])  cube([10,25,100], true);
translate([17,0,65])  cube([6,26,20], true);
  translate([17,0,-15])  cube([6,26,30], true);
   translate([19,0,30])  cube([10,26,55], true);
}
