difference(){
	translate([0,0,-2]) cube(size = [80,24,34], center = true);
	translate([0,0,20]) color("green") cube(size = [52.5,7.5,32], center = true);
	scale([1.85,1.2,1])  cylinder(h = 10.5, r=2.7,$fn=50, center=true);	
	translate([0,0,-6]) cylinder(h = 26, r=2.35,$fn=50, center=true);	
	translate([0,-7.5,-2]) color("blue") cube(size = [2.6,11,35], center=true);
	translate([0,8,16]) rotate([90,0,0]) cylinder(h = 8.6, r=10,$fn=50, center=true);	

}

difference(){
	union(){
		translate([-35,-20,-2]) cube(size = [10,16,34], center = true);
		translate([35,-20,-2]) cube(size = [10,16,34], center = true);
	}
	translate([0,-30,10]) rotate([50,0,0]) cube(size = [81,45,20], center = true);
}

