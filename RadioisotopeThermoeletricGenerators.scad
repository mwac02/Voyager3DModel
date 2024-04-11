module radioisotope_thermoeletric_generators(posx = 0, posy = 0, posz = 0) {
        translate([posx, posy, posz]){
            
            translate([0,80,0]) rotate([90,0,0]) cylinder(5,4,4);
            translate([0,100,0]) rotate([90,0,0]) cylinder(20,8,8);
            
            translate([0,105,0]) rotate([90,0,0]) cylinder(5,4,4);
            translate([0,125,0]) rotate([90,0,0]) cylinder(20,8,8);
               
            translate([0,130,0]) rotate([90,0,0]) cylinder(5,4,4);
            translate([0,150,0]) rotate([90,0,0]) cylinder(20,8,8);
            
            translate([0,75,0]) rotate([90,0,0]) cylinder(10,5,20);
            translate([0,66,0]) rotate([90,0,0]) cylinder(2,20,20);
            
    translate([0,157,10]) rotate([40,0,0]) cube([10,30,10], center = true);
        }
      
}

radioisotope_thermoeletric_generators();