module radioistope_thermoelectric_generator(posx = 0, posy = 0, posz = 0) {
    translate([posx, posy, posz]) {
        translate([0, -7, -.1])
        rotate([90,0,0])
        cylinder(h = 5, r = .5, center = true);
    }
}