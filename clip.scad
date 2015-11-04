$fn = 100;
module holder(){
    translate([-24,-25,0])
    {
        difference(){
            minkowski(){
                cube([19,45,5], true);
                translate([12,26,0]) sphere(5);
            }
            cube([24,51,10]);
       // translate([15,50,13]) cube([80,129,5], true);
        }
    }
}
module part1(){
difference(){
    union(){
        holder();
        translate([30,0,0]) cube([60,25,10], true);
        
    }
       translate([47,0,5]) cube([90,20,10], true);
    
}


}
rotate([0,4,0]){  
    part1();
    translate([-20,0,0]) cylinder(6,1,1, true);
    translate([-5,0,0]) cylinder(6,1,1, true);
    }
translate([0,1,20]) rotate([180,-4,0])  {
    part1();
}


rotate([0,-8,0]) translate([-19,-20,20]) cylinder(6,1,1, true);
rotate([0,-8,0])  translate([-4,-20,20]) cylinder(6,1,1, true);
rotate([0,-8,0]) translate([-19,20,20]) cylinder(6,1,1, true);
rotate([0,-8,0])  translate([-4,20,20]) cylinder(6,1,1, true);
rotate([0,-5,0]) translate([60,0,4.9]) rotate([90,0,0]) 
difference(){
    cylinder(25,19.3,19.3, true);   
    cylinder(41,9.2,9.2, true);
    translate([-41,0,0]) cube([77,74,51], true);  
}


