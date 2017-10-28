module form(){ hull(){
cylinder(50,30,30);


translate([0,0,100]) cube([150,95,1],true);
}
}
difference(){
difference()
{


form();
  
translate([0,0,10]) scale([0.98,0.95,0.96]) form();
cylinder(15,22,30);
    
}
for(i = [10:5:45]){
translate([0,0,2*i]) cube([150,i,1], true);
}
for(i = [10:5:45]){
translate([0,0,2*i]) cube([1.7*i,120,1], true);
}
}
