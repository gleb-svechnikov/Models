difference(){
	cube(size = [20,6,7], center = true);
	translate([0,0,4]) color("green") cube(size = [14,1.9,8], center = true);
	scale([1.8,1,1])  cylinder(h = 5, r=0.55,$fn=50, center=true);	
	translate([0,0,-3]) cylinder(h = 2, r=0.5,$fn=50, center=true);	
	translate([0,3.8,0]) color("blue") cube(size = [0.5,7,9], center=true);
	translate([0,-2,5]) rotate([90,0,0]) cylinder(h = 3.5, r=3,$fn=50, center=true);	
	
}
