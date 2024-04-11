module magnetometer(posx = 0, posy = 0, posz = 0) {
    translate([posx, posy, posz]) {
        rotate([90,0,0])
        difference() {
            cylinder(h = .05, r = .5, $fn = 3, center = true);
            cylinder(h = .5, r = .49, $fn = 3, center = true);
        }

        translate([.5,0,0])
        rotate([90,0,0])
        cylinder(h = 1, r = .01, $fn = 100, center = true);

        translate([-.25,0,-.43])
        rotate([90,0,0])
        cylinder(h = 1, r = .01, $fn = 100, center = true);

        translate([-.25,0,.43])
        rotate([90,0,0])
        cylinder(h = 1, r = .01, $fn = 100, center = true);
        
    }
}