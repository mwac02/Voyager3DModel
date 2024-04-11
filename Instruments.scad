module instruments(posx = 0, posy = 0, posz = 0) {
    translate([posx,posy,posz]) {
        color("#3c3c3c") {
            translate([0,0,.3]) 
            cylinder(h = 1.7, r = .2, $fn = 100, center = true);

            translate([.4,0,-.1])
            cube([.3,1,1.7], center = true);
            
            translate([-.8,0,-.3])
            cube([1,1,.8], center = true);
            translate([-.55,-.25,-.9]) 
            cube([.5,.5,.5], center = true);
            translate([-.55,-.1,-1.4]) 
            cube([.35,.4,.25], center = true);

            translate([-.6,0,-.25])
            rotate([0,90,0])
            cylinder(h = 1.9, r = .13, $fn = 100, center = true);

            translate([.7,0,0]) 
            rotate([90,0,0])
            image_science_subsystem();
        }

        color("#cd7f32")
        translate([-.55,-.25,-1.4]) 
        cylinder(h = .3, r = .15, $fn = 100);

    rotate([90,0,0])
        infrared_interferomteter();
    }
}

module image_science_subsystem() {
    translate([0,.5,-.5])
    cylinder(h = 1, r = .15, $fn = 100, center = true);
    translate([.05,0,0]) 
    cylinder(h = 1, r = .2, $fn = 100, center = true);
    translate([.05,-.5,.2])
    cylinder(h = .3, r = .2, $fn = 100, center = true);
    
}

module infrared_interferomteter() {
    translate([-.55,-1.3,-.3]) {
        color("#fff")
        difference() {
            cylinder(h = .4, r = .55, $fn = 100, center = true);
            translate([0,0,-.1])
            cylinder(h = .5, r = .54, $fn = 100, center = true);
        }

        color("#c0c0c0")
        translate([0,0,-.06]) 
        cylinder(h = .5, r = .15, $fn = 100, center = true);
    }
}