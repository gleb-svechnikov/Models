$fn = 1000;
difference(){    

union(){
    difference(){
        cylinder(2,5,5, true);
        translate([0,0,4]) color("red") cylinder(10,3.5,3.5, true);
    }
    translate([0,0,-3]) color("red") cylinder(5.5,3.75,3.75, true);
}
    
translate([0,0,-8]) color("red") cylinder(19,1.5,1.5, true);
    translate([0,-5.5,-3.75]) cube([7,5,5.5],true);
    translate([0,5.5,-3.75]) cube([7,5,5.5],true);

}
    
