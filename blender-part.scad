difference(){
  cylinder(380,980,980,true);

  cylinder(381,940,940,true);
}
translate([0,0,-190])  difference(){
  cylinder(40,941,941,true);

  cylinder(41,690,690,true);
}

translate([0,560,-256]) rotate([10,0,0]) cube([100,300,60],true);
rotate([0,0,120]) translate([0,560,-256]) rotate([10,0,0]) cube([100,300,60],true);
rotate([0,0,-120]) translate([0,560,-256]) rotate([10,0,0]) cube([100,300,60],true);


translate([0,0,-310]) difference(){
  cylinder(120,460,460,true);
  cylinder(121,380,380,true);
}



translate([0,0,-340]) difference(){
  cylinder(220,790,790,true);
  cylinder(221,690,690,true);
  rotate([21,-5,0]) translate([0,-580,350]) cube([600,600,200],true);
  rotate([21,-5,120]) translate([0,-580,350]) cube([600,600,200],true);
  rotate([21,-5,-120]) translate([0,-580,350]) cube([600,600,200],true);
  
  translate([-500,-580,-350])  rotate([0,0,-45]) cube([600,600,2000],true);
  rotate([0,0,120]) translate([-500,-580,-350])  rotate([0,0,-45]) cube([600,600,2000],true);
  rotate([0,0,-120]) translate([-500,-580,-350])  rotate([0,0,-45]) cube([600,600,2000],true);
  
}
translate([0,0,-330]) difference(){
  cylinder(250,740,740,true);

  cylinder(251,690,690,true);
}
translate([0,0,-160]) for(i=[0:1:820]){
  rotate([0,0,i]) translate([930,0,i/3]) sphere(25);
}
