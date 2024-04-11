module right_support_arm(posx = 0, posy = 0, posz = 0) {
    color("#3c3c3c")
    translate([posx,posy,posz]) {
        part_horizontal();
        part_vertical();
        rotate([0,90,0])
        part_vertical();
        
        translate([.6,0,0]) {
            part_horizontal();
            part_vertical();
        }
        
        translate([.6,0,.6]) {
            part_horizontal();
        }

        translate([0,1,.6])
        rotate([0,90,0])
        part_vertical();
        

        translate([.6,1,0])
        part_vertical();

        translate([0,0,.6]) {
            part_horizontal();
            rotate([0,90,0])
            part_vertical();
        }

        translate([0,1,0]) {
            part_vertical();
            rotate([0,90,0])
            part_vertical();
        }

        rotate([-60,0,0])
        cylinder(h = 1.2, r = .03, $fn = 100);

        mirror([0,90,0])
        translate([.6,-1,0]) 
        rotate([-60,0,0])
        cylinder(h = 1.2, r = .03, $fn = 100);

        translate([0,1,0])
        rotate([90,0,30])
        cylinder(h = 1.2, r = .03, $fn = 100);

        mirror([90,0,0])
        translate([-.6,1,.6]) 
        rotate([90,0,30])
        cylinder(h = 1.2, r = .03, $fn = 100);
        
    }
}

module part_horizontal() {
    cube([.1,.1,.1], center = true);
    translate([0,.5,0])
    rotate([90,0,0])
    cylinder(h = 1, r = .03, $fn = 100, center = true);
    translate([0,1,0])
    cube([.1,.1,.1], center = true);
}

module part_vertical() {
    translate([0,0,.3])
    cylinder(h = .6, r = .03, $fn = 100, center = true);
}