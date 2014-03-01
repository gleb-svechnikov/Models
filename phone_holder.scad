difference(){
	cube(size = [20,6,7], center = true);
	translate([0,0,5]) color("green") cube(size = [14,1.9,8], center = true);
	scale([1.85,1.2,1])  cylinder(h = 3, r=0.55,$fn=50, center=true);	
	translate([0,0,-3]) cylinder(h = 4, r=0.58,$fn=50, center=true);	
	translate([0,3.8,0]) color("blue") cube(size = [0.55,7,9], center=true);
	translate([0,-2,5]) rotate([90,0,0]) cylinder(h = 3.5, r=3,$fn=50, center=true);	
	
}
