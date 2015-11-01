$fn = 100;
module holder(){
    translate([-50,-50,0]){
        difference(){
            minkowski(){
                cube([50,100,10], true);
                translate([22,50,5]) sphere(5);
            }
            cube([45,99,15]);
        translate([15,50,13]) cube([80,129,5], true);
        }
    }
}

difference(){
    union(){
        holder();
        translate([50,0,3]) cube([100,50,15], true);
    }
       translate([40,0,8]) cube([150,40,15], true);
}
difference(){
    
        rotate([0,10,0]) translate([121,0,20.2]) cube([50,50,15], true);
        rotate([0,10,0]) translate([125,0,25.3]) cube([90,40,15], true);
        rotate([0,20,0]) translate([125,0,49]) cube([90,51,10], true);
    
}
translate([151,0,-8])
minkowski(){
 cube([5,50,7], true); translate([152,24,-11]) sphere(2);
}