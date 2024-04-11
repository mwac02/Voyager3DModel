module magnetometer(posx = 0, posy = 0, posz = 0) {
    translate([posx, posy, posz]) {
        translate([0,-3,.7])
        rotate([47,0,0])
        cylinder(h = 150, r = 3);
        
        translate([0,-110,100]) rotate([10,0,0]) cube(10, center = true);
        
        translate([0,-3,.7]) rotate([47,0,0]) cylinder(10,4,4);
    }
}

magnetometer();