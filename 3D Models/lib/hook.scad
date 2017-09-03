translate([10,0,-7]) cylinder(15,4,4,true);
for(i=[0:180]){
    translate([10*cos(i),0,10*sin(i)]) 
    rotate([0,0,0])
    sphere(4, true);
}