module thermal_blanket(posx = 0, posy = 0, posz = 0) {
    color("#e5b80b")
    translate([posx,posy,posz])
        difference() {
            cylinder(h = 1, r = 2, $fn = 10, center = true);
            cylinder(h = 2.5, r = 1.75, $fn = 10, center = true);
        }
}