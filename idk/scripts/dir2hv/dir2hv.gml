
function dir2hv(dir_=direction, spd_=speed) {
	//gml_pragma("forceinline")
	//if dir && spd {
		spd.h = (dsin(dir_+90)%360)*spd_;
		spd.v = (dcos(dir_+90)%360)*spd_;
		dir = 0;
		spd = 0;
		direction = 0;
		speed = 0;
	//}
	
}
function hv2dir(hspd, vspd) {
	var spd = new vec2(hspd, vspd);
	spd = (abs(spd.h)+abs(spd.v))/2;
	dir = darctan2(spd.h, spd.v);
	speed = spd;
	direction = dir;
}