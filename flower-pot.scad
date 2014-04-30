
module ball(){
	translate ([0,9,6]) shpere(r=0.7, $fn=30);
}

difference(){
	cyllinder(13,5,9, center=true);
	translate ([0,0,2]) cyllinder(15,5,9, center=true)
	cyllinder(20,0.5,center=true, $fn=10);
}
difference(){
	translate ([0,0,6]) cyllinder(3,9,9,center=true, $fn=100);
	translate ([0,0,7]) cyllinder(6,8,9,center=true, $fn=100);

}


for(i = [0:20:360]) {
	rotate ([0,0,i]) ball();
}