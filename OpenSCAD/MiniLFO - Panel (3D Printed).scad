use <components/jack_35mm.scad>
use <components/led_3mm.scad>
use <components/pot_alpha_16mm.scad>

$fn=100; 
hp = 4;

EURORACK_H = 128.5;
EURORACK_W = 5.08;
THICKNESS = 2; // thickness

w = hp * EURORACK_W;


module main(){
    cube([w, EURORACK_H, THICKNESS]);
    translate([11, 1.4,-0.4]) cube([w-11, 3.2, 0.4]);
    translate([11, EURORACK_H-4.6,-0.4]) cube([w-11, 3.2, 0.4]);
    
    // rib
    rib_height = 6;
    rib_margin = 13;
    rib_thickness = 6;

    translate([0, rib_margin,-rib_height]) cube([rib_thickness, EURORACK_H-rib_margin*2, rib_height]);
    // --
}


module logo(x, y){
    // label
    translate([x, y, THICKNESS-0.6]) {
        rotate([0, 0, 90]) {
            linear_extrude(height=0.6) {
                text("benjiaomodular",
                     font="Liberation Sans",
                     size=6);
            }
        }
    }
}

module blank_panel(){
    difference() {
        main();
        
        union(){
            // mounting holes
            translate([7.5, 3, 0]) cylinder(r=1.6, h=10, center=true);
            translate([7.5, EURORACK_H-3, 0]) cylinder(r=1.6, h=10, center=true);
            
            translate([2, 118, 1]) {
                linear_extrude(height=1.4) {
                    text("MiniLFO",
                         font="Liberation Sans",
                         size=3);
                }
            }
            
            translate([EURORACK_W * 2, 105, 0])  pot_alpha_16mm();
            translate([EURORACK_W * 2 - 6, 105-14.5, 1]) {
                linear_extrude(height=1.4) {
                    text("RATE",
                         font="Liberation Sans",
                         size=3);
                }
            }
            
            translate([EURORACK_W * 2, 78, 0])   pot_alpha_16mm(); 
            translate([EURORACK_W * 2 - 8, 78-14.5, 1]) {
                linear_extrude(height=1.4) {
                    text("RANGE",
                         font="Liberation Sans",
                         size=3);
                }
            }
            
            translate([EURORACK_W * 2, 51, 0])   pot_alpha_16mm(); 
            
            translate([EURORACK_W * 2, 38]) led_3mm();
            translate([EURORACK_W * 2, 32]) led_3mm();
            
            translate([EURORACK_W * 2, 20, 0]) jack_35mm();
            
            
        }
    }
}

translate([w, 0, 2]) rotate([0, 180, 0]) blank_panel();
//translate([w, 0, 2]) color([1,0,0]) rotate([0, 180, 0]) logo(13, 16);