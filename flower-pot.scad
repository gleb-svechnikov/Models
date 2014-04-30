
module ball(h){
	translate ([0,9,h]) sphere(r=0.7, $fn=30);
}
module bottom(h){
	difference(){
		color("red") translate ([0,0,-h]) sphere(r=9.61, $fn=30);
		translate ([0,0,-(h-0.75)]) color("red") cube([20,20,17.6], center=true);
	}
}


module belt(h){
	difference(){
		translate ([0,0,h]) cylinder(3,9,9,center=true, $fn=200);
		translate ([0,0,h+1]) cylinder(6,8,9,center=true, $fn=200);
	}
	for(i = [0:20:360]) {
		rotate ([0,0,i]) ball(h);
	}
}

difference(){
	color ("blue") cylinder(18.99,5.5,9, center=true, $fn=200);
	translate ([0,0,2]) cylinder(20,5.5,9, center=true,$fn=50)
	cylinder(20,0.5,center=true, $fn=50);
	bottom(-0.062);		 
}

belt(8);