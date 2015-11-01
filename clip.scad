$fn = 100;
module holder(){
    translate([-40,-30,0])
    {
        difference(){
            minkowski(){
                cube([40,60,10], true);
                translate([18,30,0]) sphere(5);
            }
            cube([35,60,10]);
        translate([15,50,13]) cube([80,129,5], true);
        }
    }
}
module part1(){
difference(){
    union(){
        holder();
        translate([50,0,0]) cube([100,30,15], true);
    }
       translate([77,0,5]) cube([150,20,15], true);
}


}
part1();
translate([-4,0,31]) rotate([180,-10,0])  part1();


translate([110,0,24.3]) rotate([90,0,0]) 
difference(){
    cylinder(30,36,36, true);   
    cylinder(51,19,19, true);
    translate([-41,0,0]) cube([65,34,51], true);  
}


