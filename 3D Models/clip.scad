$fn = 50;
module base(){
    difference(){
        cube([24,51,10], true);
        translate([0,0,2]) cube([20,55,10], true);
    }
}

difference(){
    cylinder(24,19.3,19.3, true);   
    cylinder(41,9.2,9.2, true);
    translate([-40,0,0]) cube([77,74,51], true);  
}
rotate([5,90,90]) translate([0,25,-14.3]) base();
rotate([5,-90,90]) translate([0,25,-14.3]) base();


module holder(){
minkowski(){
difference(){
    
    translate([-12,-25,-6])             
            cube([24,50,10]);
    cube([23.9,49.9,9], true); 
}
translate([-12,-25,4])  sphere(2);
}
}
module holder1(){
    holder();
translate([-18,-25,5]) cylinder(6,1,1, true);
translate([-6,-25,5]) cylinder(6,1,1, true);
}
module holder2(){
    holder();
    translate([-18,-10,5]) cylinder(6,1,1, true);
    translate([-6,-40,5]) cylinder(6,1,1, true);
    translate([-18,-40,5]) cylinder(6,1,1, true);
    translate([-6,-10,5]) cylinder(6,1,1, true);
}
translate([-75,-13,25]) rotate([90,0,180]) holder1();
translate([-52,13,25]) rotate([90,0,0]) holder2();