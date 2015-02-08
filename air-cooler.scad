module box_top(h){
	translate([0,0,h]) difference(){
	    cube([142,280,180], center=true);
	    color("blue") translate([0,0,-h]) cube([132,270,200], center=true);
	    color("green") translate([0,0,h-20]) rotate([90,0,0]) cylinder(300,60,60, center = true);
	};

}
module tube(length = 30){
	$fn = 100;
	difference(){
		cylinder(length,6,6, center = true);
		cylinder(length +1,5,5, center = true);
	}
}
module water_box(){
	difference(){
	    cube([142,60,60], center=true);
	    translate([70,0,29]) cube([4,60,4], center=true);
		color("green") translate([0,0,1]) cube([139,59,59], center=true);
	};
	color("red") translate([1,29,27.5]) cube([140,3,1], center=true);
	color("red") translate([1,29,29.5]) cube([140,3,1], center=true);
	color("red") translate([1,-29,27.5]) cube([140,3,1], center=true);
	color("red") translate([1,-29,29.5]) cube([140,3,1], center=true);
}
module box_bottom(h){
	translate([0,0,h]) difference(){
	    cube([142,280,40], center=true);
	    color("blue") translate([0,0,20]) cube([130,270,60], center=true);
	    color("green") translate([0,0,20]) rotate([90,0,0]);
	};
        translate([0,0,0.87*h]) difference(){
            cube([135,275,10], center=true);
            cube([130,270,11], center=true);
        }
}
module legs(position_z = 90, radius = 2){
	for (i = [1,-1]){
		for (j = [1, -1]){
			color("purple") translate([64*i,134*j,position_z]) cylinder(8,radius,radius, center = true, $fs = 0.5);
		}
	}
}

module pins(radius = 5){
	for (i = [1,-1]){
		for (j = [1, -1]){
			color("green") translate([66*j,-160,60*i]) rotate([90,0,0]) cylinder(40,radius,radius, center = true, $fs = 0.5);
		}
	}
};
module top(){
	difference(){
		translate([0,0,100]) cube([140,280,5], center=true);
		legs(98,2.5);
	}
}

module holder(height = 40, position_z = 0){
	for (n = [-15 : 15]) {
		translate([n*4,-140,position_z]){
			color("red") cube([1,280,height], center = false);
		}
	}
}
module grid(position_y = 0){
	for(n = [-10:10]){
		translate([6*n,position_y,-40]){
			cube([2, 2,120], center = false);
		}
	}
}
box_top(20);
box_bottom(-150);
//translate([0,0,20]) pins(4);
//top();
//legs(89,2);
//holder(40, -88);
//holder(10, 80);
//grid(137);
grid(-139);
translate([0,180,-140]) water_box();
translate([120,150,-115]) cube([140, 60,2], center = false);


