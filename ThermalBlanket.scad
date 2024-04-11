module thermal_blanket(posx = 0, posy = 0, posz = 0) {
    color("#3c3c3c") {
        translate([posx,posy,posz])
        rotate([0,0,90])
        cylinder(h = 1, r = 2, $fn = 10, center = true);

        translate([0,0,.2])
        difference() {
            sphere(r = .8, $fn = 100);
            translate([0,0,-.5])
            cube([1.5,1.5,1], center = true);
        }
    }
}

module golden_record() {
    color("#ffd700") {
        translate([1.91,0,0])
        rotate([0,90,0])
        cylinder(h = .01, r = .35, $fn = 100, center = true);
    }
}

module thermal_control_louvers(face_angle = 0) {
    width = .85;
    height = .7;
    
    color("#c0c0c0") {
        rotate([face_angle,90,0])
        translate([0,0,1.95]) {
            cube([.06,1,.15], center = true);
            
            difference() {
                cube([width,height*1.5,.1], center = true);
                translate([0,0,.1])
                cube([width-.05,height*1.5-.05,.2], center = true);
            }
        }

        for (i = [1:8]) {
            rotate([face_angle,90,0])
            translate([-.2,-.55,1.95])
            translate([0,i/8,0])
            cube([height/2,.01,.13], center = true);

            rotate([face_angle,90,0])
            translate([.2,-.55,1.95])
            translate([0,i/8,0])
            cube([height/2,.01,.13], center = true);
        }

        
    }
}

module bottom_support(face_pos = 0) {
    angle = 20;
    
    color("#3c3c3c") {
        translate([face_pos,0,-1.3]) {
            translate([0,-.65,0])
            rotate([angle,0,0])
            cylinder(h = 2.6, r = .1, $fn = 100, center = true);
            
            translate([0,.65,0])
            rotate([-angle,0,0])
            cylinder(h = 2.6, r = .1, $fn = 100, center = true);


            translate([0,0,-1.3])
            cube([.3,.8,.7], center = true);
        }
    }
}

module top_support() {
    color("#3c3c3c") {
        union() {
            translate([1.6,.55,.8])
            rotate([-10,-15,0])
            cylinder(h = 1.54, r = .08, $fn = 100, center = true);

            translate([1.3,1,.9])
            rotate([30,19,0])
            cylinder(h = 1.52, r = .08, $fn = 100, center = true);
        }
    }
}

module long_top_support() {
    color("#3c3c3c") {
        translate([-.7,-1.4,.8])
        rotate([0,45,0])
        cylinder(h = 1.7, r = .08, $fn = 100, center = true);

        translate([.7,-1.4,.8])
        rotate([0,-45,0])
        cylinder(h = 1.7, r = .08, $fn = 100, center = true);
    }
}

golden_record();
thermal_control_louvers(-36);
thermal_control_louvers(36);
thermal_control_louvers(144);
thermal_control_louvers(-144);

bottom_support(1);
bottom_support(-1);
rotate([0,0,90]) {
    bottom_support(1);
    bottom_support(-1);
}

top_support();
rotate([0,0,108])
top_support();
long_top_support();