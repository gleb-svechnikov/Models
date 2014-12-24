$fn = 100;
linear_extrude(height = 5, center = false, convexity = 10, twist = 360)
translate([10, 0, 0]) circle(r = 3);
translate([0, 0, 2]) difference(){
	cylinder(h = 7, r=12, center=true);
	cylinder(h = 8, r=7, center=true);
}
translate([0, 0, -11]) difference(){
	cylinder(h = 20, r=9, center=true);
	cylinder(h = 21, r=5, center=true);
}