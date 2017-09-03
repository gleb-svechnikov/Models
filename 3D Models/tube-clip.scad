cylinder(30,10,10);
cylinder(5,11,11);
difference(){
  translate([0,0,-15]) rotate([0,90,0]) difference(){    
    cylinder(40,18,18,true);
    cylinder(43,14.5,14.5,true);
  }
  translate([0,0,-35]) cube([60,60,20], true);  
}