$fn = 100;
difference(){    

union(){
    difference(){
        cylinder(2,5,5, true);
        translate([0,0,4]) color("green") cylinder(15,3.5,3.5, true);
    }
    translate([0,0,-2]) color("red") cylinder(5,3.75,3.75, true);
}
    
 cylinder(10,1,4, true);
    translate([0,-5.5,-3.76]) cube([7,5,5.5],true);
    translate([0,5.5,-3.76]) cube([7,5,5.5],true);

}
    
