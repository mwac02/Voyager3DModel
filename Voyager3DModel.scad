/*
    Voyager 3D Model
*/

include <ThermalBlanket.scad>
include <HighGainAntenna.scad>
include <RTG.scad>
include <Magnetometer.scad>
include <Imaging Science Subsystem.scad>

high_gain_antenna(0,0,1.6);
thermal_blanket();
radioistope_thermoelectric_generator();
magnetometer();