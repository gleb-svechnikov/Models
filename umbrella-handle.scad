$fn = 20;
difference(){
for(i = [0 : 180]){
  translate([25*cos(i),0,25*sin(i)]) rotate([0,0,0])  sphere(6);
};
translate([0,0,35]) rotate([0,45,0])  cube([10,15,10], true);
}
difference(){
translate([25,0,-24]) cylinder(50,6,6, true);

translate([25,0,-30]) cylinder(40,3,3, true);
translate([30.5,-3,-5]) rotate([0,90,0]) text("NYELLIN", font = "Liberation Sans:style=Bold Italic", size = 7);
}


difference(){
//translate([29,-5,-47]) cube([2,10,45]);


//use </Library/Fonts/Zapfino.ttf>

}

module fox(){




import("fennec_fox_cupboard_handle-fennec_fox_head.stl");
  
  }
  translate([-28,0,-0]) resize([25,25,25]) rotate([30,180,-90]) fox();
