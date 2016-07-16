  translate([10,0,22])
  rotate([0,-110,0]) 
for(i = [0 : 80]){
  translate([25*cos(i),0,25*sin(i)])  sphere(3.5);
};
//cylinder(30,10,10);


difference(){
  translate([0,0,-10]) rotate([0,90,0]) difference(){    
    cylinder(40,27,27,true);
    cylinder(40,24,24,true);
  }
  translate([0,0,-35]) cube([60,60,20], true);  
}