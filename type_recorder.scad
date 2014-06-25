$fn=500;


module side(size, angle){
	difference(){
		cube([2,size,size]);
		rotate([angle,0,0]) translate([-0.1,size*0.9,-size/2]) cube([2.2,size,size]);
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
		rotate([0,0,00]) translate([0,3,0]) cube([size*2+1,size*2+1,height+1], center = true);
	}
}
translate ([0,-7.5,12]) back(20, 26);
union(){
	difference(){
		cube([20,50,2], center=true);
		translate([0,5,0])cube([8,12,3], center=true);
	}
	translate([0,25,0]) cylinder(2, 10, 10, center=true);
	translate([0,25,5]) tube(6,4, 10);
}
translate([-10,-25,0]) side(25, 45);
translate([8,-25,0]) side(25, 45);