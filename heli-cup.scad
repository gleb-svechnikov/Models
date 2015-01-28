$fn = 100;
module hook(){
//	cylinder(10,0.6,0.6,true);
	rotate([0,90,0]) translate([-5,0,1]) cylinder(3,0.6,0.6,true);
}



difference(){
	cylinder(7,14,11,true);
	translate([0,0,-1]) cylinder(8,13,10.1,true);
	cylinder(15,2.5,2.5,true);
	
}
 translate([-15,0,-7.5]) hook();

