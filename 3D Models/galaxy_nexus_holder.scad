module connector(x,y,z, h){
	translate([x,y,z])
	
	union(){
	
	scale([1.9,1.1,1])  cylinder(h, r=2.2,$fn=50, center=true);
	color("red") translate([-2,0,0]) cube(size = [5,5,h], center = true);
	
	}
	
}
difference(){
	translate([0,0,-8.8]) cube(size = [80,30,40], center = true);
	rotate([-15,0,0])  translate([0,-5,5]) color("green") cube(size = [65,12,22], center = true);
	translate([0,12,-11]) rotate([-15,0,0]) cube(size = [3.5,35,45], center=true);
	translate([0,-10,-25]) color("red") cylinder(10, r=2.2,$fn=50, center=true);
	translate([0,4,-5]) rotate([-15,0,0]) connector(0,-10,-10, 18);
}


translate([0,1.5,-2.5]) rotate([0,0,180]) difference(){
	union(){
		translate([-35,-21,-6]) cube(size = [10,15,41], center = true);	
		translate([35,-21,-6]) cube(size = [10,15,41], center = true);
	}
	translate([0,-26,10]) rotate([61,0,0]) cube(size = [81,45,20], center = true);
}


