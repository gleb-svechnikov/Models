difference(){
	translate([0,0,-4]) cube(size = [80,24,38], center = true);
	rotate([10,0,0]) translate([0,11,-5]) color("blue") cube(size = [81,7,38], center = true);
	rotate([10,0,0]) translate([0,0,20]) color("green") cube(size = [58,7,32], center = true);
	rotate([10,0,0]) scale([1.85,1.2,1])  cylinder(h = 13, r=2.5,$fn=50, center=true);	
	rotate([10,0,0]) translate([0,0,-9]) cylinder(h = 30, r=2.35,$fn=50, center=true);	
	rotate([10,0,0]) translate([0,-7.5,-5]) color("red") cube(size = [2.6,17,45], center=true);
	translate([0,8,16]) rotate([90,0,0]) cylinder(h = 15, r=10,$fn=50, center=true);	

}

difference(){
	union(){
		translate([-35,-20,-4]) cube(size = [10,16,38], center = true);	
		translate([35,-20,-4]) cube(size = [10,16,38], center = true);
	}
	translate([0,-30,10]) rotate([50,0,0]) cube(size = [81,45,20], center = true);
}
