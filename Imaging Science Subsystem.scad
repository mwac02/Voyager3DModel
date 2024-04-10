module Imaging_Science_Subsystem(posx = 0, posy = 0, posz = 0){
    translate([posx, posy, posz]) {
    
    cilindroAltura = 35;
    cilindroDiametro = 8;

    //cilindro superior
    translate([-1,3,14]) rotate([90,0,0])
    cylinder(cilindroAltura - 5,cilindroDiametro - 3,cilindroDiametro - 3, center = true);

    translate([-1,18,14]) rotate([90,0,0])
    cylinder(cilindroAltura - 30,cilindroDiametro - 5,cilindroDiametro - 5, center = true);

    translate([-1,22,14]) rotate([90,0,0])
    cylinder(cilindroAltura - 32,cilindroDiametro - 4,cilindroDiametro - 4.5, center = true);

    translate([-6,-10,9.2])cube([10,10,10]);

    //cilindro maior
    rotate([90,0,0])
    cylinder(cilindroAltura,cilindroDiametro,cilindroDiametro, center = true);

    translate([0,-1.9,0])cube(16.5, center = true);

    //partes internas
    translate([0,13,0]) rotate([90,0,0])
    cylinder(cilindroAltura - 5,cilindroDiametro - 1,cilindroDiametro - 1, center = true);

    translate([0,-10,0]) rotate([90,0,0])
    cylinder(cilindroAltura - 2,cilindroDiametro - 2.5,cilindroDiametro - 2.5, center = true);

    translate([0,27.7,0]) rotate([90,0,0])
    cylinder(cilindroAltura - 34.5,cilindroDiametro-.5,cilindroDiametro-.5, center = true);

    //cilindro inferior
    translate([0,-6,-15]) rotate([90,0,0])
    cylinder(cilindroAltura - 20,cilindroDiametro - 2,cilindroDiametro - 2, center = true);
    
    translate([0,-15,-15]) rotate([90,0,0])
    cylinder(cilindroAltura - 30,cilindroDiametro - 2,cilindroDiametro - 5, center = true);

    // retangulo
    translate([-9,0,0])cube([7,30,43], center = true);
    }
    
    //juncao base
    module juncao(x,y,z,circunferencia){translate([x,y,z]) rotate([0,90,0]) cylinder(1.5,circunferencia,circunferencia);}
    
    juncao(-14,0,0,5);
    juncao(-15,0,0,4);
    juncao(-16,0,0,3);
    
    //peca entre juncoes
    translate([-19.5,0,4.4])cube([7,7,15], center = true);
    translate([-19.5,0,22])cylinder(23,3,3, center = true);
    
    juncao(-24,0,0,3);
    juncao(-25.5,0,0,4);
    juncao(-26.8,0,0,5);
    
    //peca da direita (ultraviolet spectrometer)
    translate([-34,0,0])cube(15, center = true);
    translate([-30.5,3.5,-11])cube(8, center = true);
    
    // cilindro direito
    translate([-30.5,9,-10]) rotate([90,0,0]) cylinder(3,11,11, center = true);
    
    translate([-44.5,0,0])cube([6,18,6], center = true);
    
    variavel = 8;

    module rolamento(){
        translate([-30.5,12.5,-10]) rotate([90,0,0])       rotate_extrude(angle=360){
            translate([variavel,0,0])
            square(2);
        }
    }
    rolamento();
    
    module haste_ligamento(posx = 0, posy = 0, posz = 0) {
    translate([posx, posy, posz]) {
        translate([-19.7,4,30])
        rotate([95,0,0])
        cylinder(h = 50, r = 4);
        }
    }
    haste_ligamento();
    
}

Imaging_Science_Subsystem(0,0,0);