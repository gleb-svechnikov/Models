n = 6;
r = 0.3;
$fn = 100;
difference(){
	translate([-0.5,-0.5,-0.5]) cube(n);
	color("blue") cube(n);
	translate([n/2,n/3,n/2]) rotate([90,0,0]) cylinder(n/2, r, r);
	translate([-n/3,n/2,n/2]) rotate([0,90,0]) cylinder(n/2, r, r);
	translate([n/2,n/2,-n/3]) rotate([0,0,90]) cylinder(n/2, r, r);

}
