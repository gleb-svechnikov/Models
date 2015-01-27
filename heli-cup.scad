module hook(){
	cylinder(100,6,6,true);
	rotate([0,90,0]) translate([-50,0,20]) cylinder(50,6,6,true);
}



difference(){
	cylinder(100,260,220,true);
	translate([0,0,-20]) cylinder(100,260,220,true);
	cylinder(150,40,40,true);
	
}
rotate([-60,5,0]) translate([-280,50,-100]) hook();

