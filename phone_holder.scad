
difference(){
	translate([0,0,-5]) cube(size = [80,24,39], center = true);
	rotate([10,0,0]) translate([0,11,-5]) color("blue") cube(size = [81,7,42], center = true);
	rotate([10,0,0]) translate([0,0,9]) color("green") cube(size = [59,7,13], center = true);
	rotate([10,0,0]) scale([1.85,1.2,1])  cylinder(h = 15	, r=2.4,$fn=50, center=true);	
	rotate([10,0,0]) translate([0,0,-11]) cylinder(h = 30, r=2.3,$fn=50, center=true);	
	rotate([10,0,0]) translate([0,-7.5,-5]) color("red") cube(size = [2.6,17,45], center=true);
	translate([0,8,16]) rotate([90,0,0]) cylinder(h = 15, r=10,$fn=50, center=true);	

}

difference(){
	union(){
		translate([-35,-20,-5]) cube(size = [10,16,39], center = true);	
		translate([35,-20,-5]) cube(size = [10,16,39], center = true);
	}
	translate([0,-26,10]) rotate([61,0,0]) cube(size = [81,45,20], center = true);
}
