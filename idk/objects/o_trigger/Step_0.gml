step();
var dude = collision_rectangle(x, y, x2, y2, SPACEMAN, true, false);
if dude {
	if !active enter();
	active = true;
	stay();
} else {
	if active leave();
	active = false;
}
//log(x, y, dude, active);


