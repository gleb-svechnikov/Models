difference(){
	cube(size = [30,10,6], center = true);
	translate([0,0,3]) color("green") cube(size = [15,2,8], center = true);
	rotate(a=90, v=[1,0,0]) rotate(a=20, v=[1,0,]) translate([0,0.4,4]) color("red") cylinder(h = 7.5, r=1,$fn=50, center=true);

}