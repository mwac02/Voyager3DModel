module high_gain_antenna(posx = 0, posy = 0, posz = 0) {
    translate([posx, posy, posz]) {
        color("#3c3c3c")
        cylinder(h = .5, r = 2, $fn = 100, center = true);
        color("#fff")
        translate([0,0,0.25])
        cylinder(h = 1.5, r1 = 2, r2 = 4, $fn = 200);

        translate([0,0,5]) {
            translate([0,0,-.4])
            cylinder(h = .02, r = .12, $fn = 100, center = true);
            color("#fff")
            translate([0,0,-.45])
            cylinder(h = .2, r = .06, $fn = 100, center = true);
            translate([0,0,-.75])
            cylinder(h = .5, r1 = .13, r2 = .08, $fn = 100, center = true);
            translate([0,0,-1])
            cylinder(h = .03, r = .83, $fn = 100, center = true);
            color("#fff")
            difference() {
            sphere(r = 1.3, $fn = 100);
            translate([0,0,1])
            cube([3,3,4], center = true);
        }
        }
    }
}

module support() {
    translate([0,3.8,3.31])
    color("#fff") {
        rotate([58,0,10])
        cylinder(h = 4.25, r = .04, $fn = 100);

        rotate([58,0,-10])
        cylinder(h = 4.25, r = .04, $fn = 100);
    }
}

support();
rotate([0,0,120])
support();
rotate([0,0,240])
support();