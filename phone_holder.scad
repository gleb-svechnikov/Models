difference(){
cube(size = [5,10,30], center = true);
translate([3,0,0]) color("green") cube(size = [5,1,10], center = true);
rotate(a=90, v=[1,0,0]) rotate(a=-20, v=[0,1,0]) translate([1,0,2.6]) color("red") cylinder(h = 5, r=0.4,$fn=50, center=true);
}
