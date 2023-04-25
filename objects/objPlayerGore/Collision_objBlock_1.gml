if speed < 1{
    speed = 0;
    gravity = 0;
}
else{
    move_bounce_solid(false);
    speed -= 2.5;
}

