$fn = 100;
module hook(){
	rotate([35,0,5])  translate([0,2.8,0.8]) cylinder(7,0.6,0.6,true);
	rotate([0,90,0]) translate([-5,0,0.6]) cylinder(2.2,0.6,0.6,true);
}



difference(){
	cylinder(7,14,11,true);
	translate([0,0,-1]) cylinder(8,14.1,11.1,true);
	cylinder(15,2.5,2.5,true);
	
}
for (i = [0:90:360]){
 rotate([0,0,i]) translate([-15,0,-7.5]) hook();
}

for (i = [0:90:360]){
	rotate([0,0,i+30])	translate([-9,0,0]) cylinder(7,1.5,1.5,true);
}