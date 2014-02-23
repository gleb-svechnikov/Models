module efes(h){
multmatrix(m = [ [1, 0, 0, 0],
                 [0, 5, 0, 0],
                 [0, 0, 1, 0],
                 [0, 0, 0,  1]
               ]) cylinder(h=h, r=10);
}
efes(10);