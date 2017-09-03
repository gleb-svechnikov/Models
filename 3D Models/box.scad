module box_top(h){
	translate([0,0,h]) difference(){
	    cube([140,280,180], center=true);
	    color("blue") translate([0,0,-h]) cube([130,290,210], center=true);

	};

}
box_top(20);