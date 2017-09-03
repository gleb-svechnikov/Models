module hook(){
	module halfRing() {
     	difference() {
			cylinder (h = 4, r=3, center = true, $fn=1000);
			cylinder (h = 4.1, r=2, center = true, $fn=1000);
			translate([-1,-1.9,0]) color("red") cube(size = [4,3,4.6], center = true);
		}
 	}
	halfRing();
	translate([2,-4.55,0])
	mirror([0,0,0]) rotate(a=-180, v=[0,0,1])  halfRing();
}

module section(){
	translate([-2.5,0,1.7]) 
	rotate(a=45, v=[1,0,-1.1]) 
	color("red") 
	cube(size = [2,5,2], center = true);
}

difference(){
	hook();
	section();
	mirror([0,0,1]) section();
}
color("green") translate([-2.5,-1,0])  sphere(1, $fs = 0.1);



		
