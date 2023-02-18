$fn=100; 

module led_3mm(){
    cylinder(r=1.5, h=5, center = true);
    translate([0, 0, -2]) cylinder(r=2, h=4, center = true);
}

led_3mm();