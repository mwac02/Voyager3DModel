module radioistope_thermoelectric_generator(posx = 0, posy = 0, posz = 0) {
    translate([posx, posy, posz]) {
        color("#3c3c3c")
        translate([0, -7, -.1])
        rotate([90,0,0]) {
            section();

            translate([0,0,2])
            section();

            translate([0,0,4])
            section();

            cylinder(h = 4, r = .3, $fn = 100);
        }

        color("#c0c0c0") {
            translate([.3,-6.5,0])
            rotate([-85,0,-3])
            cylinder(h = 4, r = .05, $fn = 100);

            translate([-.3,-6.5,0])
            rotate([-85,0,3])
            cylinder(h = 4, r = .05, $fn = 100);

            translate([.3,-6.5,-.5])
            rotate([-77,0,-3])
            cylinder(h = 4, r = .05, $fn = 100);

            translate([-.3,-6.5,-.5])
            rotate([-77,0,3])
            cylinder(h = 4, r = .05, $fn = 100);
        }
    }
}

module section() {
    translate([0,0,-.85])
    cylinder(h = .01, r = .6, $fn = 100, center = true);
    cylinder(h = 1.7, r = .4, $fn = 100, center = true);
    translate([0,0,.85])
    cylinder(h = .01, r = .6, $fn = 100, center = true);

    for (i = [1:45:360]) {
        rotate([0,0,i])
        translate([0,.5,0])
        rotate([90,0,90])
        cube([.2,1.7,.05], center = true);
    }
}