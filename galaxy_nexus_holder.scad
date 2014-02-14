difference(){
	translate([0,0,-8.8]) cube(size = [126,42,25], center = true);
	translate([0,0,-2.1]) color("green") cube(size = [58.8,7.98,12], center = true);
	scale([1.9,1.1,1])  cylinder(h = 21, r=2.2,$fn=50, center=true);	
	translate([0,0,-12.6]) cylinder(h = 12.6, r=1.30,$fn=50, center=true);	
	translate([0,15.54,-4.2]) color("blue") cube(size = [2,29.4,37.8], center=true);
}
