module magnetometer(posx = 0, posy = 0, posz = 0) {
    translate([posx, posy, posz]) {
        translate([0,-3,.7])
        rotate([47,0,0])
        cylinder(h = 30, r = .5);
    }
}