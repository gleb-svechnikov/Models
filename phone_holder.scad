difference(){
	cube(size = [80,24,32], center = true);
	translate([0,0,20]) color("green") cube(size = [50,8,32], center = true);
	scale([1.85,1.2,1])  cylinder(h = 9, r=2.8,$fn=50, center=true);	
	translate([0,0,-3]) cylinder(h = 26, r=2.5,$fn=50, center=true);	
	translate([0,-7.5,0]) color("blue") cube(size = [2.6,11,34], center=true);
	translate([0,8,16]) rotate([90,0,0]) cylinder(h = 8.5, r=10,$fn=50, center=true);	

}

difference(){
	union(){
		translate([-35,-20,0]) cube(size = [10,16,32], center = true);
		translate([35,-20,0]) cube(size = [10,16,32], center = true);
	}
	translate([0,-30,10]) rotate([50,0,0]) cube(size = [81,45,20], center = true);
}
