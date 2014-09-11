$fn=100;
$fs = 0.2;
module halfRing() {
     	difference() {
			cylinder (h = 12, r=10, center = true);
			cylinder (h = 12.4, r=6, center = true);
			translate([-4,-7.2,0]) color("red") cube(size = [12,12,18.4], center = true);
		}
 	}

module hook(){	
	halfRing();
	translate([3,-15.5,0])
	mirror([1,0,0]) rotate(a=-100, v=[0,0,1])  halfRing();
}
module section(){
	translate([-8,0,6]) 
	rotate(a=45, v=[1,0,-1.1]) 
	color("red") 
	cube(size = [8,15,8], center = true);
}
difference(){
	hook();
	section();
	mirror([0,0,1]) section();
}
translate([-8,-1,0])  sphere(3);
