$fn=100; 

module jack_35mm(x, y, r){
    
    
    translate([0, 0, 2.5]){
        cylinder(r=3.5, h=5, center=true);
        
    }
    
    translate([0, 0, -0.5]) {
    
        cylinder(r=3.75, h=1, center=true);
        
        translate([-1.5, 0, -13.5]){
            cube([3, 10, 13]);
        }
    }
    
    
    translate([-4.5, -6, -14]){
        cube([9, 10.6, 13]);
    }
    

}

jack_35mm(0, 0, 0);