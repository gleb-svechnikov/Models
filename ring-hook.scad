difference(){
cylinder(10,15,15);
cylinder(10,13,13);
}

difference(){
translate([8,20,0]) rotate([0,0,-85]) 
hull(){ 
for(i = [1 : 1 : 10]){
  rotate([0,0,i*11]) translate([18,0,0+i/2]) cube([6-i/2,15,10-i]);
}
}
translate([17,19,0])
cylinder(10,14,14);
}