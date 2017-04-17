color("white") square([150,570], true);
difference(){
  color("black") translate([0,0,4]) square([150,570], true);
  translate([0,-195,4]) square([51,97], true);
}
difference(){
  color("red") translate([0,0,8]) square([150,570], true);
  union(){
    color("red") translate([-20,60,8]) square([26,414], true);
    color("red") translate([0,-208,8]) square([112,124], true);
  }
}
difference(){
color("blue") translate([0,0,12]) square([150,570], true);
 translate([0,0,12]) square([120,540], true);
}

difference(){
color("yellow") translate([0,0,16]) square([150,570], true);
color("blue") translate([0,15,16]) square([130,580], true);
}

difference(){
color("green") translate([0,0,20]) square([150,570], true);
 translate([0,0,20]) square([120,540], true);
}


color("purple") translate([0,10,96]) square([130,560], true);