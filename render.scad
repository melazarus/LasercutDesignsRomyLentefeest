

rotate([0,0,$t*360])
translate([-100,0,0])
{

show(0,"back.svg");
show(1,"L3L4.svg");
show(2,"L3L4.svg");
show(3,"L3L4.svg");
show(4,"L3L4.svg");
show(5,"L5L6.svg");
show(6,"L5L6.svg");
show(7,"L3L4.svg");
show(8,"L3L4.svg");
show(9,"L3L4.svg");
show(10,"L2B.svg", glass=true);
show(10,"L2A.svg");
show(11,"L1.svg");
}


module show(layer, file, glass=false)
{
    if (glass) {
        color([.8,.8,1,.2])
            translate([0,-3*layer,0])
                rotate([90,0,0])
                    linear_extrude(2.7)
                        import(file);
    } else 
    {
        translate([0,-3*layer,0])
            rotate([90,0,0])
                linear_extrude(2.7)
                    import(file); 
    }
}
