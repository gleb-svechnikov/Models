difference(){
	translate([0,0,-2]) cube(size = [30,10,5], center = true);
	translate([0,0,4]) color("green") cube(size = [14,1.9,10], center = true);
	scale([1.8,1,1])  cylinder(h = 5, r=0.5,$fn=50, center=true);	
	translate([0,0,-3]) cylinder(h = 3, r=0.3,$fn=50, center=true);	
	translate([0,3.7,-1]) color("blue") cube(size = [0.3,7,9], center=true);
}
