  translate([10,0,11])
  rotate([0,-110,0]) 
for(i = [0 : 80]){
  translate([15*cos(i),0,15*sin(i)])  sphere(3.5);
};
//cylinder(30,10,10);


difference(){
  translate([0,0,-10]) rotate([0,90,0]) difference(){    
    cylinder(40,19,19,true);
    cylinder(40,15,15,true);
  }
  translate([0,0,-30]) cube([60,60,20], true);  
}

translate([0,-15.5,-21]) rotate([45,0,0]) cube([40,6,4], true);
translate([0,15.5,-21]) rotate([-45,0,0]) cube([40,6,4], true);