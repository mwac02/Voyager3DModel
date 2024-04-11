/*
    Voyager 3D Model
*/

include <ThermalBlanket.scad>
include <HighGainAntenna.scad>
include <RTG.scad>
include <Magnetometer.scad>
include <Instruments.scad>
include <RightSupportArm.scad>

high_gain_antenna(0,0,1.6);
thermal_blanket();
radioistope_thermoelectric_generator(0,1,0);
instruments(0,8,.4);

translate([-.3,0,-.3])
rotate([147,0,0])
for (i = [1:55]) {
    magnetometer(0,i,0);
}

for (i = [1:7]) {
    right_support_arm(-.3,i,.7);
}