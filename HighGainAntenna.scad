module high_gain_antenna(posx = 0, posy = 0, posz = 0) {
    translate([posx, posy, posz]) {
        cylinder(h = .5, r = 2, $fn = 100, center = true);
        translate([0,0,0.25])
        cylinder(h = 1.5, r1 = 2, r2 = 4, $fn = 200); // Transformar em paraboloide.
    }
}