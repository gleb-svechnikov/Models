module box_top(h){
	translate([0,0,h]) difference(){
	    cube([142,280,180], center=true);
	    color("blue") translate([0,0,-h]) cube([132,270,200], center=true);
	    color("green") translate([0,0,h-20]) rotate([90,0,0]) cylinder(300,60,60, center = true);
	};

}
module foil(height=190){
	difference(){
		square([height,260], true);
		for(i=[-2:2]){
			translate([65.1,i*50]) square([60,20], true);
			translate([-80,i*100]) circle(3);
			translate([20,i*100]) circle(3);
		}
		
	}
}

module freezer(height = 190){
	color("white") difference(){			
	square([height,260], true);
		for(i=[-2:2]){
			translate([65.1,i*50]) square([60,20], true);
			translate([-80,i*100]) circle(3);
			translate([20,i*100]) circle(3);
		}
		
	}
	translate([0,0,1]) foil();
	translate([0,0,-1]) foil();
}
module water_box(){
	
	difference(){
			rotate([90,0,0]) cylinder(280,26,26, center = true);
			rotate([90,0,0]) cylinder(279,25,25, center = true);
			translate([0,0,24]) cube([49,281,26], center=true);
			translate([-20,0,-4]) cube([20,281,50], center=true);
	};
			
		    

}

module box_bottom(h){
	translate([0,0,h]) difference(){
	    cube([142,280,40], center=true);
	    color("blue") translate([0,0,20]) cube([133,275,70], center=true);
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
//box_top(20);
//translate([0,0,20]) pins(4);
//top();
//legs(89,2);
//holder(40, -88);
//holder(10, 80);
//grid(137);
//grid(-139);
difference(){
box_bottom(-150);
translate([75,0,-163]) cube([30, 274,4], center = true);
}
translate([73,0,-144]) water_box();

rotate([0,90,0]) 
for(i=[-12:12]){
	
	translate([0,0,i*5]) freezer();
}
module plate(){
		difference(){
			color("orange") cube([2,260,20], true);
			for(i=[-1:1]){
				rotate([0,90,0]) translate([0,100*i,-1]) cylinder(20,3,3,true);
			}
		}
}
for(i=[-13:12]){ 
	translate([i*5+2,0,79]) plate();
	translate([i*5+2,0,-19]) plate();
}
//rotate([0,90,0]) translate([0,50,15]) cylinder(200,2,2,true);
