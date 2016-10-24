module ring(r1,r2,h){
    difference(){
      cylinder(h,r1,r1,true);
      cylinder(h+1,r2,r2,true);
    }
}
ring(980,940, 380);
translate([0,0,-310]) ring(460,380, 120); 

translate([0,0,-190])  ring(941,690, 40); 
translate([0,0,-330]) ring(740,690, 250);  

module holder(){
translate([0,560,-256]) rotate([10,0,0]) cube([100,300,60],true);
rotate([0,0,120]) translate([0,560,-256]) rotate([10,0,0]) cube([100,300,60],true);
rotate([0,0,-120]) translate([0,560,-256]) rotate([10,0,0]) cube([100,300,60],true);
}
holder();




module clip(){
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
}
module thread(){
  translate([0,0,-160]) for(i=[0:1:820]){
    rotate([0,0,i]) translate([930,0,i/3]) sphere(25);
  }
}
thread();