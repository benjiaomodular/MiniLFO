$fn=100; 

module pot_alpha_16mm(){
    
    
    shaft_height = 8;
    translate([0, 0, shaft_height/2]){
        cylinder(r=3.6, h=shaft_height, center=true);
    }
    
    translate([0, 0, -0.5]){
        cylinder(r=5.4, h=1, center=true);
        
        body_height = 18.6;
        
        translate([-7.5, -14, -body_height]) cube([15, 14, body_height]);
        translate([0, 0, -body_height/2]){
            cylinder(r=9.5, h=body_height, center=true);
            
        }      
    }
    

}

pot_alpha_16mm();