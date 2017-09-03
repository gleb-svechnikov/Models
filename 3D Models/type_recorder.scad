$fn=500;


module side(size, angle){
	difference(){
		cube([2,size,size]);
		rotate([angle,0,0]) translate([-0.1,size*0.55,-size]) cube([2.2,40,size*2]);
	}
}
module side2(angle){
	difference(){
		cube([2,11,11], center = true);
		color("green") rotate([-angle,0,0]) translate([0,-5,1]) cube([2.1,15,18], center = true);
	}
}
 
module tube(r_out, r_in, height){
	difference(){
		cylinder(height, r_out, r_out, center=true);
		cylinder(height+ 0.1, r_in, r_in, center=true);
	}
}
module back(size, height){
	difference(){
		tube(size,size-2, height, center = true);
		rotate([0,0,50]) translate([0,20,0]) cube([size*2+1,size*2+1,height+1], center = true);
		rotate([0,0,-50]) translate([0,20,0]) cube([size*2+1,size*2+1,height+1], center = true);
	}
}
module base(){
	hull(){
		translate([0,-19.9,0]) cube([20,1,3], center=true);
		translate([0,25,0]) cylinder(3, 7, 7, center=true);
	}
}
module hook(){
	translate([0,15.7,6]) side2(20);
	difference(){
		translate([0,22.5,6]) cube([3,2.5,11], center = true);		
		translate([0,25,0]) cylinder(20.3, 2, 2, center=true);
	}
	translate([0,24,10.9]) cylinder(1.5, 1.5, 1.5, center=true);
}

	hook();

difference(){
	base();
	color("blue") translate([0,8,0]) cube([10,16,3.1], center=true);
	translate([0,25,0]) cylinder(18, 2, 2, center=true);
}
difference(){
	translate([0,25,-5]) tube(5,4, 10);
	translate([-3.5,21,-5]) cylinder(10.5, 1, 1, center=true);
	translate([3.5,21,-5]) cylinder(10.5, 1, 1, center=true);
}

translate ([0,7.6,4.5]) back(30, 12);

translate([5,11,0]) cylinder(3, 1, 1, center=true);
translate([-5,11,0]) cylinder(3, 1, 1, center=true);

difference(){
	union(){
	rotate([0,0,-3.5]) translate([-8.5,-21,-0.5]) side(19,65);
	rotate([0,0,3.5]) translate([6.5,-21,-0.5]) side(19, 65);
	}translate([0,-20,11]) cube([22,5,1], center = true);
	
}
rotate([90,0,0]) translate([0,10.5,29]) cylinder(17, 2, 2, center=true);