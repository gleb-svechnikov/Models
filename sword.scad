module efes(h){
multmatrix(m = [ [1, 0, 0, 0],
                 [0, 6, 0, 0],
                 [0, 0, 1, 0],
                 [0, 0, 0,  1]
               ]) cylinder(h=h, r=10, center=true);
}
module ring(r,t,h){
	difference(){
		cylinder(h=h, r=r, center=true);
		cylinder(h=h, r=r-t, center=true);
		translate([r/2,0,0]) cube([r,2*r,h], center=true);
	}
}

module arc(r,t, w){
	multmatrix(m = [ [w, 0, 0, 0],
                 [0, 1, 0, 0],
                 [0, 0, 1, 0],
                 [0, 0, 0,  1]
               ])
	difference(){
		ring(r,t,10)
		color("red") translate([r/2,0,0]) cube([r,2*r,10], center=true);
	}
		
}
efes(10);
translate([-59,10,0])
cube([100,5,10], center=true);

translate([-59,-10,0])
cube([100,5,10], center=true);

translate([-113,0,0]) arc(20,4,1);

translate([-110,0,0]) cube([10,40,10], center=true);

translate([-110,0,0]) arc(11,4,1.8);

for (i = [1:5]) { 
	translate([-(i*18),0,0]) rotate ([0,0,30])  cube([4,21,10], center=true);
}


