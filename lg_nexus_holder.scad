
difference(){
	translate([0,0,-5]) cube(size = [80,24,39], center = true);
	rotate([10,0,0]) translate([0,11,-5]) color("blue") cube(size = [81,7,42], center = true);
	rotate([10,0,0]) translate([0,-1,9]) color("green") cube(size = [65,11,13], center = true);
	rotate([10,0,0]) scale([1.85,1.2,1])  cylinder(h = 15	, r=2.4,$fn=50, center=true);	
	rotate([10,0,0]) translate([0,0,-11]) cylinder(h = 30, r=2.3,$fn=50, center=true);	
	rotate([10,0,0]) translate([0,-7.5,-5]) color("red") cube(size = [3,17,45], center=true);

}

difference(){
	union(){
		translate([-35,-20,-5]) cube(size = [10,16,39], center = true);	
		translate([35,-20,-5]) cube(size = [10,16,39], center = true);
	}
	translate([0,-26,10]) rotate([61,0,0]) cube(size = [81,45,20], center = true);
}
module arc(x,y,z){
	difference(){
	rotate([90,0,0]) translate([10,0,-101]) cylinder(h = 7, r=150,$fn=50, center=true);
	rotate([90,0,0])translate([10,10,-101]) cube(size = [300,300,39], center = true);

	}
}
arc();