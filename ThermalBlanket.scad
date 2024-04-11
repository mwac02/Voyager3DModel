module thermal_blanket(posx = 0, posy = 0, posz = 0) {
    color("#3c3c3c")
    translate([posx,posy,posz])
    rotate([0,0,90])
        difference() {
            cylinder(h = 1, r = 2, $fn = 10, center = true);
            cylinder(h = 2.5, r = 1.75, $fn = 10, center = true);
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

golden_record();
thermal_control_louvers(-36);
thermal_control_louvers(36);
thermal_control_louvers(144);
thermal_control_louvers(-144);