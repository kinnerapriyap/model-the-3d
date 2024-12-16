include <roundedcube.scad>

module label(name) {
    $fn=256;
    linear_extrude(height=50) 
        offset(r=0.5) {
            text(name, size=30, font="Snell Roundhand:style=Regular");
        }
}



difference() {
    name="Manju";
    l=textmetrics(text=name, size=30, font="Snell Roundhand:style=Regular");
    echo(l);
    translate([l.position.x-5,l.position.y-5,-20]) roundedcube([l.size.x+10,l.size.y+15,1], radius = 5, apply_to="zmin|zmax");
    translate([0,0,-20]) label(name);
        translate([l.position.x+5,30,-20]) cylinder(50, 2, 2);
}