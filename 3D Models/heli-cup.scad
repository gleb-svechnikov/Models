$fn = 100;
module hook(){
	rotate([40,0,5])  translate([0,3.2,2]) cylinder(4,0.7,0.7,true);
	rotate([0,90,0]) translate([-5,0,0.6]) cylinder(2.2,0.7,0.7,true);
    translate([0,0,4.9]) sphere(0.87);
}

module tube(x,y,z){
   translate([x,y,z]) 
    difference(){
        cylinder(6.5,1.5,1.5,true);
        cylinder(6.6,1.3,1.3,true);
    }
}


difference(){
	cylinder(7,14,11,true);
	translate([0,0,-1]) cylinder(8,14.1,11.1,true);
	cylinder(15,2.5,2.5,true);
	
}
for (i = [0:90:360]){
 rotate([0,0,i]) translate([-15,0,-7.5]) hook();
}


tube(-6.5,7.2,0);
tube(0.5,-9.7,0);
translate([6.7,7.7,0]) cylinder(6.6,0.9,0.9,true);
translate([-6.7,-7.7,0]) cylinder(6.6,0.9,0.9,true);
